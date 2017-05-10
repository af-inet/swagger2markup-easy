
<a name="definitions"></a>
## Definitions

<a name="error"></a>
### Error

|Name|Description|Schema|
|---|---|---|
|**code**  <br>*required*|**Example** : `0`|integer (int32)|
|**message**  <br>*required*|**Example** : `"string"`|string|


<a name="pet"></a>
### Pet

|Name|Description|Schema|
|---|---|---|
|**id**  <br>*required*|**Example** : `0`|integer (int64)|
|**name**  <br>*required*|**Example** : `"string"`|string|
|**tag**  <br>*optional*|**Example** : `"string"`|string|


<a name="pets"></a>
### Pets
*Type* : < [Pet](definitions.md#pet) > array



