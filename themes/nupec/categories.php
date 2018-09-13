
<div class="nav-scroller py-1 mb-2">
  <nav class="nav d-flex justify-content-between">
    <?php 
      $categories = get_categories(array(
        'hide_empty' => 0,
        'orderby' => 'name',
        'order'   => 'ASC'
        ));

      foreach ($categories as $category) {        
      $name = explode('-', $category->name)[1];
    ?>
        <a class="p-2 text-muted" href="<?php echo(get_category_link( $category )) ?>"><?php echo($name) ?></a>
    <?php
      }
    ?>
    
  </nav>
</div>
