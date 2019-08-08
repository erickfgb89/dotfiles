# got vault from here https://releases.hashicorp.com/vault/0.11.3/
# path should already include ~/bin
# cais vault docs: https://pages.ghe.coxautoinc.com/CoxAuto-ProductionEngineering/vault-docs/use-cases/aws-creds/#helper-utilities
export VAULT_ADDR=https://re-tooling-vault-us-east-1.aws-uat.manheim.com:443
alias vault='vault login -method=ldap username=ealdaz'
eval $(vault-aws-creds.py -w)
