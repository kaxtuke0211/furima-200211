## Users

|Column|Type|Options|
|------|----|-------|

|nickname             |string |null: false|
|email                |string |null: false|
|password             |string |null: false|
|confirmation_password|string |null: false|
|birthday             |integer|null: false|
|name                 |string |null: false|
|name_reading         |string |null: false|

### Association

has_many :items
has_many :purchase_records


## Items

|Column|Type|Options|
|------|----|-------|

|product_name       |string |null: false|
|category           |integer|null: false|
|price              |string |null: false|
|image              |string |null: false|
|product_description|string |null: false|
|product_condition  |integer|null: false|
|shipping_charges   |integer|null: false|
|shipping_area      |integer|null: false|
|days_to_ship       |integer|null: false|
|user_id            |string |foreign_key: true|

### Association
belongs_to :users
has_one :purchase_records


## Purchase_records

|Column|Type|Options|
|------|----|-------|

|credit_id|string |null: false|
|user_id  |string |foreign_key: true|
|item_id  |string |foreign_key: true|

### Association
belongs_to :users
belongs_to :items
has_one :shipping_address


## Shipping_address

|Column|Type|Options|
|------|----|-------|

|postal_code  |string |null: false|
|prefectures  |integer|null: false|
|city         |string |null: false|
|house_number |string |null: false|
|building_name|string |null: false|
|phone_number |string |null: false|

### Association
belongs_to :purchase_records