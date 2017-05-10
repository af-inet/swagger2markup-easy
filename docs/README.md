
<a name="paths"></a>
## Paths

<a name="createpets"></a>
### Create a pet
```
POST /pets
```


#### Responses

|HTTP Code|Description|Schema|
|---|---|---|
|**201**|Null response|No Content|
|**default**|unexpected error|[Error](definitions.md#error)|


#### Tags

* pets


#### Example HTTP request

##### Request path
```
/pets
```


#### Example HTTP response

##### Response default
```
json :
{
  "code" : 0,
  "message" : "string"
}
```


<a name="listpets"></a>
### List all pets
```
GET /pets
```


#### Parameters

|Type|Name|Description|Schema|
|---|---|---|---|
|**Query**|**limit**  <br>*optional*|How many items to return at one time (max 100)|integer (int32)|


#### Responses

|HTTP Code|Description|Schema|
|---|---|---|
|**200**|An paged array of pets  <br>**Headers** :   <br>`x-next` (string) : A link to the next page of responses.|[Pets](definitions.md#pets)|
|**default**|unexpected error|[Error](definitions.md#error)|


#### Tags

* pets


#### Example HTTP request

##### Request path
```
/pets
```


##### Request query
```
json :
{
  "limit" : 0
}
```


#### Example HTTP response

##### Response 200
```
json :
{ }
```


##### Response default
```
json :
{
  "code" : 0,
  "message" : "string"
}
```


<a name="showpetbyid"></a>
### Info for a specific pet
```
GET /pets/{petId}
```


#### Parameters

|Type|Name|Description|Schema|
|---|---|---|---|
|**Path**|**petId**  <br>*required*|The id of the pet to retrieve|string|


#### Responses

|HTTP Code|Description|Schema|
|---|---|---|
|**200**|Expected response to a valid request|[Pets](definitions.md#pets)|
|**default**|unexpected error|[Error](definitions.md#error)|


#### Tags

* pets


#### Example HTTP request

##### Request path
```
/pets/string
```


#### Example HTTP response

##### Response 200
```
json :
{ }
```


##### Response default
```
json :
{
  "code" : 0,
  "message" : "string"
}
```



