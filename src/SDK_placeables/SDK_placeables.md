## Umístitelné objekty

---

Pole **testAreas** definuje testovací oblasti, které se používají k identifikaci možných konfliktů umístění. 
K vytvoření testovacího boxu používáme dva body a ve hře používáme kontrolu `overlapBox` k získání objektů 
uvnitř boxu ke kontrole konfliktů. To znamená, že pokud jsou v testovacích oblastech jiné předměty, předmět 
tam nelze umístit.

Pole **clearAreas** definuje oblast pod modelem, kde budou po umístění modelu vymazána listí a pole.

Pole **levelAreas** také definuje oblast pod modelem, kde bude terén vyrovnán, aby lépe kopíroval objekt.

Oblast **tipOcclusionUpdateAreas** používá hra k určení, zda by se určité interakce prostředí, jako je 
padající sníh, měly stále vyskytovat v místech kolem objektu, nebo zda byly zablokovány.

Pole **updateAreas** pod polem **ai** dává systému AI pokyn, aby vzorkoval oblast aktualizace, 
aby získal nové informace o kolizích, kterým se musí v budoucnu vyhnout.

---

**tipCollision** - místo kde nepůjde sypat na zem _(modré jedničky)_, kvádr zanořený pod zem, materiál: lambert1

```xml
<Shape name="tipCollision" visibility="false" static="true" 
collisionMask="524288" clipDistance="300" castsShadows="true" 
receiveShadows="true"/>
```
    collisionMask: 80000 HEX

---

**collisions** - kolize, libovolný tvar, materiál: lambert1

```xml
<Shape name="collision" visibility="false" static="true" 
density="0" castsShadows="true" receiveShadows="true" 
nonRenderable="true"/>
```

