<h1 class="name">{$node.name|wash()}</h1>
{def $children=fetch( content , list , hash(    parent_node_id , $node.node_id , 
                                                class_filter_type , 'include' , 
                                                class_filter_array , array( 'image' ) ,
                                                sort_by , array( array( 'priority' , true() ) , array( 'published' , true() ) ) ))}
<div id="myGallery">
    {foreach $children as $image_node}
        {node_view_gui content_node=$image_node view='image_galerie'}
    {/foreach}
</div>
<script type="text/javascript">
{literal}
function startGallery() {
var myGallery = new gallery($('myGallery'), {
timed: true,
showArrows: true,
showCarousel: true,
embedLinks: true
});
}
window.onDomReady(startGallery);
{/literal}
</script>

