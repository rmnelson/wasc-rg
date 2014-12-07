This is the development base for wasc-rg a tool to help teachers submit
information for wasc reporting.

## Model link
https://my.vertabelo.com/model/OvU7mtdsHbaN1iLK2tuBkTj27K7A9NKGVFK77En1aD0SB1zOFngeK86jItxooOEA

###Development server
ec2-54-149-111-52.us-west-2.compute.amazonaws.com : ( 54.149.111.52 )

## connect
User: ec2-user

Private key:

-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAs9EVU6BXMayEROMJ6LSe1jwH4D3rH+e2FH2ibmwoxxO/oMWw315M3sRKgMkI
RgvBYsljY3DGpIQfykparwBojmgJFN3MVKSLBxlITZLogHN2+SqeXWGf5up28l8X3gPdCUi1LWEq
ylWvxBWl5L5hMShMWccb8KD+SXwtEKVVYUqMmLa1/3L2Sdoo08SSrU/J8HoRfJGfeWtD1c1QNfyy
4cPMIuMhFUbMWpOJs/04Ewf4z07AUew+LMunb9CQp+8l6gCv+kkE/NWJ0IrUL1WvsslBekbIRmMd
Z/7efMh/eOZUzOUPapERAcH0vbqpU8rDaRAuWTou/kA/H/hPNh3lIwIDAQABAoIBAGQJcf/wOBIe
lAdu99hKhANTql4KlIBPfHCx5GfiLF10kytyUBA0ejeEpJ45OS0e5Rt8RprP5vMnvjfgXcr2QzTW
lBbTvhVo5R+x5ROjI04y7oF4QFpbMYZZ8oqsdK7DH3lGxeTVJeUi/oHsOTqk35VlgfSAXP7l0hI3
zypvkKxqyg/sAEDZYF/zr0BH+LiF7pv2DgEbzwC2vebDqDhlFvIu61aYE3Egptmko4KQ1OZwm1IJ
md56Wd07yRYPtlFRohLGXMFx7aaWUTnsOJm3mf29gGjS5cSOlfPyWf5kYqxNsQze9/p0CXKenRTo
wOwVribsaDMPYZjofnZ37xbHj0ECgYEA4DRPuHj7oQ/6Ue0fOetjEHzcK3EANC7TlprRdu/XbJ1L
eLMprEj540G6N6eU1360XHGApHc+js57Fi0VneBL9PE21l8NeaT4DASrz3/fXg1tM1tHjNNiegE+
1u290BTtDRAiSZJufpFOAMxS0TlvGNZRb63Jrf+BxTxgpanBE5sCgYEAzVFKJS0WHsJB63zovruW
OhktNJs9uStDy3fOYqPi1CH+9R1MIgV7ZG7LWpeRwEWl+TLiRmAOKBVH2DhODtSAQdH/zkLbRffe
cpaqu7vKUy5khZvezaNyl4gOtjCLj/U60ovdHHNAZkxVn2F0RfCTmNjUJvSFZRqlfACzSZ30IRkC
gYA11xoV2KfEo8ufBOxswkQF35YXsIk1/tC85+zJPQtkf9lx4MRvJQ8tLcmEN/AcV8cENBWKaUBS
lu8kAiugwA49gfeDP0xDHASdDjocGD8RnPPOU2s5PEH3vnjSsEDWyU+rxWYWeN2j80ziEC8LI1m0
gzMHOJqn+CW3saob3koJZQKBgCXngvu4BiRpkofqCIHl2cciDMFwg4Wi4iI3HQgC34ZwPER+Qybo
wi35cltoLgVEFm8aIMIDS7nEq/3T7z03p/H+1e37U8XoC8412JFOCv0uTGqKKyjlquskuCqUbb+G
83QZVBnDgTkhkJEbCb87udP2+7uxWssejzyEWJUXrxFJAoGBAN617VZ34vVDHtPRJtdxQ8ffiCjF
jJw0QYwg8idTxtQcawisky7EWuXfdPs4Yv62pZZHZdJVyIoBYjfusGKfkF4ZS/0nku7iBov85yxU
3K1J+MWNvPtHd18ixJMz5LD9iEV3eZ5cswtGj2LIRByFHU4pbQg1t83YL9b0KYcXotvj
-----END RSA PRIVATE KEY-----

###Oracle DB
test.c3geublqc0b0.us-west-2.rds.amazonaws.com

## connect
Instance: ORCL
User: lab
Password: test1234

## test connect via ruby + ori8
ruby -r oci8 -e "OCI8.new('lab','test1234','//test.c3geublqc0b0.us-west-2.rds.amazonaws.com:1521/ORCL').exec('select * from user_tables') do |r| puts r.join(','); end"

### current creation of rails app
## you must set user and password for the oracle connection
rails new wasc_rg
cd wasc_rg
echo "
gem 'ruby-oci8'
gem 'activerecord-oracle_enhanced-adapter'
gem 'devise'
gem 'better_errors'
gem 'binding_of_caller'
" >> Gemfile
bundle install
echo "
# SQLite version 3.x
#   gem install sqlite3
#
#   Ensure the SQLite 3 gem is defined in your Gemfile
#   gem 'sqlite3'
#
default: &default
  adapter: sqlite3
  pool: 5
  timeout: 5000

development:
    adapter: oracle_enhanced
    database: orcl           # format is tns-name entry
    host:  test.c3geublqc0b0.us-west-2.rds.amazonaws.com/ORCL   # format is hostname/instance-name
    username: <USER>
    password: <PASSWORD>

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: db/test.sqlite3

production:
  <<: *default
  database: db/production.sqlite3
" > config/database.yml
rails g devise:install
rails g devise user name:string type:string
rails g scaffold teacher last_name:string first_name:string username:string availability:string course:references outcome:references
rails g scaffold outcome program:string objective_letter:string description:string ipa:references course:references program:references
rails g scaffold ipa letter:string outcome:references
rails g scaffold program name:string description:string course:references outcome:references 
rails g scaffold student last_name:string first_name:string username:string grade_basis:string academic_lev:string availability:string course:references program:references
rails g scaffold course course_num:string course_title:string units:integer program:references teacher:references student:references outcome:references
