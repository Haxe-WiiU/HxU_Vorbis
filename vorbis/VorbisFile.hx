package vorbis;

@:native("OggVorbis_File")
@:include("vorbis/vorbisfile.h")
@:valueType
extern class OggVorbis_File {
    @:include("vorbis/vorbisfile.h")
    public var datasource:VoidPtr;
    @:include("vorbis/vorbisfile.h")
    public var seekable:Int;
    @:include("vorbis/vorbisfile.h")
    public var offset:Int64;
    @:include("vorbis/vorbisfile.h")
    public var end:Int64;

    // Unknown variable type
    // @:include("vorbis/vorbisfile.h")
    // public var oy:;

    @:include("vorbis/vorbisfile.h")
    public var links:Int;
    @:include("vorbis/vorbisfile.h")
    public var offsets:Ptr<Int64>;
    @:include("vorbis/vorbisfile.h")
    public var dataoffsets:Ptr<Int64>;
    @:include("vorbis/vorbisfile.h")
    public var serialnos:Ptr<Int>;
    @:include("vorbis/vorbisfile.h")
    public var pcmlengths:Ptr<Int64>;

    @:include("vorbis/vorbisfile.h")
    public var vi:Ptr<Vorbis_info>;

    // Unknown variable type
    // @:include("vorbis/vorbisfile.h")
    // public var vc:;

    @:include("vorbis/vorbisfile.h")
    public var pcm_offset:Int64;
    @:include("vorbis/vorbisfile.h")
    public var ready_state:Int;
    @:include("vorbis/vorbisfile.h")
    public var current_serialno:Int;
    @:include("vorbis/vorbisfile.h")
    public var current_link:Int;
    @:include("vorbis/vorbisfile.h")
    public var bittrack:Float;
    @:include("vorbis/vorbisfile.h")
    public var samptrack:Float;

    // Unknown variable type
    // @:include("vorbis/vorbisfile.h")
    // public var callbacks:;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:include("vorbis/vorbisfile.h")
extern class VorbisFile {
    @:native("ov_fopen")
    @:include("vorbis/vorbisfile.h")
    extern public static function ov_fopen(path:ConstCharPtr, vf:Ptr<OggVorbis_File>):Int;

    @:native("ov_clear")
    @:include("vorbis/vorbisfile.h")
    extern public static function ov_clear(vf:Ptr<OggVorbis_File>):Int;

    @:native("ov_read")
    @:include("vorbis/vorbisfile.h")
    extern public static function ov_read(vf:Ptr<OggVorbis_File>, buffer:Ptr<Char>, length:Int, bigendianp:Int, word:Int, sgned:Int, bitstream:Ptr<Int>):Int;

    @:native("ov_time_tell")
    @:include("vorbis/vorbisfile.h")
    extern public static function ov_time_tell(vf:Ptr<OggVorbis_File>):Float;

    @:native("ov_info")
    @:include("vorbis/vorbisfile.h")
    extern public static function ov_info(vf:Ptr<OggVorbis_File>, link:Int):Ptr<Vorbis_info>;

    @:native("ov_time_total")
    @:include("vorbis/vorbisfile.h")
    extern public static function ov_time_total(vf:Ptr<OggVorbis_File>, i:Int):Float;

    @:native("ov_time_seek")
    @:include("vorbis/vorbisfile.h")
    extern public static function ov_time_seek(vf:Ptr<OggVorbis_File>, t:Float):Int;
}


