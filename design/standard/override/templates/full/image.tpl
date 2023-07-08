<div class="imageElement">
    <h3>{$node.name|wash()}</h3>
    {if $node.data_map.caption.has_content}{attribute_view_gui attribute=$node.data_map.caption}{else}<p>&nbsp;</p>{/if}
    <a href={$node.url_alias|ezurl} title="{$node.name|wash()}" class="open"></a>
    <img src={$node.data_map.image.content.image_gallery.full_path|ezroot} class="full" alt="{$node.data_map.image.content.alternative_text|wash()}" />
    <img src={$node.data_map.image.content.small.full_path|ezroot} class="thumbnail" alt="{$node.data_map.image.content.alternative_text|wash()}" />
</div>
