
import tweepy
import sqlalchemy
import psycopg2
from sqlalchemy import create_engine


#tokens e chaves para acessar o twitter
auth = tweepy.OAuthHandler("lNcyNrF67hxXDem8eucGJIDgN", "h4qHJA9NctN3t02EQk0OwNpdUhkn8F3kM7CcuMRonI8pYNzkw5")
auth.set_access_token("807049829939630080-8qcBComE08cpX36WzlL4GvLMvm1ef7u"
                      ,"a7ZOQUjhFYIKEZWxIDsmKcfjoK5wkPueagxzwCTn77oCD")

#conexao com a api
api = tweepy.API(auth)

#conexao com o banco
engine = create_engine('postgresql+psycopg2://postgres:123123@localhost/SPPIF',client_encoding='utf8')
conn = engine.connect()

#criacao da tabela e dos campos
conn.execute("""CREATE TABLE IF NOT EXISTS information(id BIGINT, name VARCHAR(100), tweet VARCHAR(150), location VARCHAR(100))""")


#insercao dos dados no banco
for tweet in tweepy.Cursor(api.search,q='bioinformatic', count=100, result_type = 'mixed').items(1500):
    conn.execute("""INSERT INTO information(id,name,tweet,location) VALUES(%s,%s,%s,%s)""",tweet.id, tweet.user.screen_name,tweet.text, tweet.user.location)

