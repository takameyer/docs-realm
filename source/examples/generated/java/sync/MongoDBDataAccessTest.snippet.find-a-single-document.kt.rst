.. code-block:: kotlin

   val queryFilter = Document("type", "perennial")
   mongoCollection.findOne(queryFilter)
       .getAsync { task ->
           if (task.isSuccess) {
               val result = task.get()
               Log.v("EXAMPLE", "successfully found a document: $result")
           } else {
               Log.e("EXAMPLE", "failed to find document with: ${task.error}")
           }
       }
