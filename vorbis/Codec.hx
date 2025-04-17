package vorbis;

@:native("vorbis_info")
@:include("vorbis/codec.h")
@:valueType
extern class Vorbis_info {
    @:include("vorbis/codec.h")
    public var version:Int;
    @:include("vorbis/codec.h")
    public var channels:Int;
    @:include("vorbis/codec.h")
    public var rate:Int;
    @:include("vorbis/codec.h")
    public var bitrate_upper:Int;
    @:include("vorbis/codec.h")
    public var bitrate_nominal:Int;
    @:include("vorbis/codec.h")
    public var bitrate_lower:Int;
    @:include("vorbis/codec.h")
    public var bitrate_window:Int;
    @:include("vorbis/codec.h")
    public var codec_setup:VoidPtr;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}