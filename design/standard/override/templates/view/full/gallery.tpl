<h1 class="name">{$node.name|wash()}</h1>
{def $children=fetch( content , list , hash(    parent_node_id , $node.node_id , 
                                                class_filter_type , 'include' , 
                                                class_filter_array , array( 'image' ) ,
                                                sort_by , array( array( 'priority' , true() ) , array( 'published' , true() ) ) ))}
<div id="myGallery{$node.node_id}" class="myGallery">
    {foreach $children as $image_node}
        {node_view_gui content_node=$image_node view='image_gallery'}
    {/foreach}
</div>
<script type="text/javascript">
{literal}
function startGallery{/literal}{$node.node_id}{literal}() {
var myGallery = new gallery($('myGallery{/literal}{$node.node_id}{literal}'), {
timed: true,
showArrows: true,
showCarousel: true,
embedLinks: true
});
}
window.onDomReady(startGallery{/literal}{$node.node_id}{literal});
{/literal}
</script>

