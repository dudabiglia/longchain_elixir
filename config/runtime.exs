import Config

config :langchain, openai_key: System.fetch_env!("OPENAI_API_KEY")
config :langchain, openai_org_id: System.fetch_env!("OPENAI_ORG_ID")
