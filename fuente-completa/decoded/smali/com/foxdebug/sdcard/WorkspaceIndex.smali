.class Lcom/foxdebug/sdcard/WorkspaceIndex;
.super Ljava/lang/Object;
.source "WorkspaceIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/foxdebug/sdcard/WorkspaceIndex$DB;,
        Lcom/foxdebug/sdcard/WorkspaceIndex$Job;,
        Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;,
        Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;,
        Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;
    }
.end annotation


# static fields
.field private static final BATCH_SIZE:I = 0xc8

.field private static final BINARY_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BINARY_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DB_VERSION:I = 0x2

.field private static final DIRECT_SEARCH_READ_LIMIT_BYTES:I = 0x1000000

.field private static final EXPLICIT_INCLUDE_READ_LIMIT_BYTES:I = 0x8000000

.field private static final INDEX_READ_LIMIT_BYTES:I = 0x200000

.field private static final MAX_INDEXED_CHARS:I = 0x80000

.field private static final MAX_MATCHES_PER_FILE:I = 0x1388

.field private static final SAMPLE_BYTES:I = 0x2000

.field private static final SEARCH_RESULT_BATCH_MATCHES:I = 0x258

.field private static final SEARCH_RESULT_BATCH_SIZE:I = 0xc

.field private static final SEPARATOR:Ljava/lang/String; = "::"

.field private static final TAG:Ljava/lang/String; = "WorkspaceIndex"

.field private static final TEXT_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final indexExecutor:Ljava/util/concurrent/ExecutorService;

.field private final jobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/foxdebug/sdcard/WorkspaceIndex$Job;",
            ">;"
        }
    .end annotation
.end field

.field private final resolver:Landroid/content/ContentResolver;


# direct methods
.method static bridge synthetic -$$Nest$sfgetBINARY_EXTENSIONS()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/foxdebug/sdcard/WorkspaceIndex;->BINARY_EXTENSIONS:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetBINARY_MIME_TYPES()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/foxdebug/sdcard/WorkspaceIndex;->BINARY_MIME_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTEXT_EXTENSIONS()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/foxdebug/sdcard/WorkspaceIndex;->TEXT_EXTENSIONS:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTEXT_MIME_TYPES()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/foxdebug/sdcard/WorkspaceIndex;->TEXT_MIME_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 29

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/foxdebug/sdcard/WorkspaceIndex;->BINARY_EXTENSIONS:Ljava/util/Set;

    .line 57
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/foxdebug/sdcard/WorkspaceIndex;->TEXT_EXTENSIONS:Ljava/util/Set;

    .line 58
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/foxdebug/sdcard/WorkspaceIndex;->BINARY_MIME_TYPES:Ljava/util/Set;

    .line 59
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/foxdebug/sdcard/WorkspaceIndex;->TEXT_MIME_TYPES:Ljava/util/Set;

    const/16 v4, 0x38

    .line 62
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "3gp"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "7z"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "aab"

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string v5, "aac"

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-string v5, "apk"

    const/4 v10, 0x4

    aput-object v5, v4, v10

    const-string v5, "avi"

    const/4 v11, 0x5

    aput-object v5, v4, v11

    const-string v5, "bin"

    const/4 v12, 0x6

    aput-object v5, v4, v12

    const-string v5, "bmp"

    const/4 v13, 0x7

    aput-object v5, v4, v13

    const-string v5, "class"

    const/16 v14, 0x8

    aput-object v5, v4, v14

    const-string v5, "db"

    const/16 v15, 0x9

    aput-object v5, v4, v15

    const-string v5, "dex"

    const/16 v16, 0xa

    aput-object v5, v4, v16

    const-string v5, "dll"

    move/from16 v17, v6

    const/16 v6, 0xb

    aput-object v5, v4, v6

    const-string v5, "doc"

    move/from16 v18, v7

    const/16 v7, 0xc

    aput-object v5, v4, v7

    const-string v5, "docx"

    const/16 v19, 0xd

    aput-object v5, v4, v19

    const-string v5, "eot"

    const/16 v20, 0xe

    aput-object v5, v4, v20

    const-string v5, "exe"

    const/16 v21, 0xf

    aput-object v5, v4, v21

    const-string v5, "flac"

    const/16 v22, 0x10

    aput-object v5, v4, v22

    const-string v5, "gif"

    const/16 v23, 0x11

    aput-object v5, v4, v23

    const-string v5, "gz"

    const/16 v24, 0x12

    aput-object v5, v4, v24

    const-string v5, "heic"

    const/16 v25, 0x13

    aput-object v5, v4, v25

    const-string v5, "ico"

    const/16 v26, 0x14

    aput-object v5, v4, v26

    const-string v5, "jar"

    const/16 v27, 0x15

    aput-object v5, v4, v27

    const/16 v5, 0x16

    const-string v28, "jpeg"

    aput-object v28, v4, v5

    const/16 v5, 0x17

    const-string v28, "jpg"

    aput-object v28, v4, v5

    const/16 v5, 0x18

    const-string v28, "keystore"

    aput-object v28, v4, v5

    const/16 v5, 0x19

    const-string v28, "m4a"

    aput-object v28, v4, v5

    const/16 v5, 0x1a

    const-string v28, "m4v"

    aput-object v28, v4, v5

    const/16 v5, 0x1b

    const-string v28, "mkv"

    aput-object v28, v4, v5

    const/16 v5, 0x1c

    const-string v28, "mov"

    aput-object v28, v4, v5

    const/16 v5, 0x1d

    const-string v28, "mp3"

    aput-object v28, v4, v5

    const/16 v5, 0x1e

    const-string v28, "mp4"

    aput-object v28, v4, v5

    const/16 v5, 0x1f

    const-string v28, "o"

    aput-object v28, v4, v5

    const/16 v5, 0x20

    const-string v28, "odt"

    aput-object v28, v4, v5

    const/16 v5, 0x21

    const-string v28, "ogg"

    aput-object v28, v4, v5

    const/16 v5, 0x22

    const-string v28, "otf"

    aput-object v28, v4, v5

    const/16 v5, 0x23

    const-string v28, "pdf"

    aput-object v28, v4, v5

    const/16 v5, 0x24

    const-string v28, "png"

    aput-object v28, v4, v5

    const/16 v5, 0x25

    const-string v28, "ppt"

    aput-object v28, v4, v5

    const/16 v5, 0x26

    const-string v28, "pptx"

    aput-object v28, v4, v5

    const/16 v5, 0x27

    const-string v28, "pyc"

    aput-object v28, v4, v5

    const/16 v5, 0x28

    const-string v28, "rar"

    aput-object v28, v4, v5

    const/16 v5, 0x29

    const-string v28, "so"

    aput-object v28, v4, v5

    const/16 v5, 0x2a

    const-string v28, "sqlite"

    aput-object v28, v4, v5

    const/16 v5, 0x2b

    const-string v28, "sqlite3"

    aput-object v28, v4, v5

    const/16 v5, 0x2c

    const-string v28, "tar"

    aput-object v28, v4, v5

    const/16 v5, 0x2d

    const-string v28, "tgz"

    aput-object v28, v4, v5

    const/16 v5, 0x2e

    const-string v28, "ttf"

    aput-object v28, v4, v5

    const/16 v5, 0x2f

    const-string v28, "wav"

    aput-object v28, v4, v5

    const/16 v5, 0x30

    const-string v28, "webm"

    aput-object v28, v4, v5

    const/16 v5, 0x31

    const-string v28, "webp"

    aput-object v28, v4, v5

    const/16 v5, 0x32

    const-string v28, "woff"

    aput-object v28, v4, v5

    const/16 v5, 0x33

    const-string v28, "woff2"

    aput-object v28, v4, v5

    const/16 v5, 0x34

    const-string v28, "xls"

    aput-object v28, v4, v5

    const/16 v5, 0x35

    const-string v28, "xlsx"

    aput-object v28, v4, v5

    const/16 v5, 0x36

    const-string v28, "xz"

    aput-object v28, v4, v5

    const/16 v5, 0x37

    const-string v28, "zip"

    aput-object v28, v4, v5

    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/16 v0, 0x2f

    .line 121
    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "astro"

    aput-object v4, v0, v17

    const-string v4, "c"

    aput-object v4, v0, v18

    const-string v4, "cc"

    aput-object v4, v0, v8

    const-string v4, "cfg"

    aput-object v4, v0, v9

    const-string v4, "conf"

    aput-object v4, v0, v10

    const-string v4, "cpp"

    aput-object v4, v0, v11

    const-string v4, "cs"

    aput-object v4, v0, v12

    const-string v4, "css"

    aput-object v4, v0, v13

    const-string v4, "csv"

    aput-object v4, v0, v14

    const-string v4, "cxx"

    aput-object v4, v0, v15

    const-string v4, "dart"

    aput-object v4, v0, v16

    const-string v4, "env"

    aput-object v4, v0, v6

    const-string v4, "go"

    aput-object v4, v0, v7

    const-string v4, "graphql"

    aput-object v4, v0, v19

    const-string v4, "h"

    aput-object v4, v0, v20

    const-string v4, "hpp"

    aput-object v4, v0, v21

    const-string v4, "htm"

    aput-object v4, v0, v22

    const-string v4, "html"

    aput-object v4, v0, v23

    const-string v4, "java"

    aput-object v4, v0, v24

    const-string v4, "js"

    aput-object v4, v0, v25

    const-string v4, "json"

    aput-object v4, v0, v26

    const-string v4, "jsx"

    aput-object v4, v0, v27

    const/16 v4, 0x16

    const-string v5, "kt"

    aput-object v5, v0, v4

    const/16 v4, 0x17

    const-string v5, "kts"

    aput-object v5, v0, v4

    const/16 v4, 0x18

    const-string v5, "less"

    aput-object v5, v0, v4

    const/16 v4, 0x19

    const-string v5, "lua"

    aput-object v5, v0, v4

    const/16 v4, 0x1a

    const-string v5, "md"

    aput-object v5, v0, v4

    const/16 v4, 0x1b

    const-string v5, "mjs"

    aput-object v5, v0, v4

    const/16 v4, 0x1c

    const-string v5, "php"

    aput-object v5, v0, v4

    const/16 v4, 0x1d

    const-string v5, "properties"

    aput-object v5, v0, v4

    const/16 v4, 0x1e

    const-string v5, "py"

    aput-object v5, v0, v4

    const/16 v4, 0x1f

    const-string v5, "rb"

    aput-object v5, v0, v4

    const/16 v4, 0x20

    const-string v5, "rs"

    aput-object v5, v0, v4

    const/16 v4, 0x21

    const-string v5, "sass"

    aput-object v5, v0, v4

    const/16 v4, 0x22

    const-string v5, "scss"

    aput-object v5, v0, v4

    const/16 v4, 0x23

    const-string v5, "sh"

    aput-object v5, v0, v4

    const/16 v4, 0x24

    const-string v5, "sql"

    aput-object v5, v0, v4

    const/16 v4, 0x25

    const-string v5, "svg"

    aput-object v5, v0, v4

    const/16 v4, 0x26

    const-string v5, "swift"

    aput-object v5, v0, v4

    const/16 v4, 0x27

    const-string v5, "toml"

    aput-object v5, v0, v4

    const/16 v4, 0x28

    const-string v5, "ts"

    aput-object v5, v0, v4

    const/16 v4, 0x29

    const-string v5, "tsx"

    aput-object v5, v0, v4

    const/16 v4, 0x2a

    const-string v5, "txt"

    aput-object v5, v0, v4

    const/16 v4, 0x2b

    const-string v5, "vue"

    aput-object v5, v0, v4

    const/16 v4, 0x2c

    const-string v5, "xml"

    aput-object v5, v0, v4

    const/16 v4, 0x2d

    const-string v5, "yaml"

    aput-object v5, v0, v4

    const/16 v4, 0x2e

    const-string v5, "yml"

    aput-object v5, v0, v4

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 171
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "application/java-archive"

    aput-object v1, v0, v17

    const-string v1, "application/java-vm"

    aput-object v1, v0, v18

    const-string v1, "application/octet-stream"

    aput-object v1, v0, v8

    const-string v1, "application/pdf"

    aput-object v1, v0, v9

    const-string v1, "application/vnd.android.package-archive"

    aput-object v1, v0, v10

    const-string v1, "application/zip"

    aput-object v1, v0, v11

    const-string v1, "application/x-7z-compressed"

    aput-object v1, v0, v12

    const-string v1, "application/x-rar-compressed"

    aput-object v1, v0, v13

    const-string v1, "application/x-sqlite3"

    aput-object v1, v0, v14

    const-string v1, "application/x-tar"

    aput-object v1, v0, v15

    const-string v1, "application/x-xz"

    aput-object v1, v0, v16

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 185
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "application/javascript"

    aput-object v1, v0, v17

    const-string v1, "application/json"

    aput-object v1, v0, v18

    const-string v1, "application/ld+json"

    aput-object v1, v0, v8

    const-string v1, "application/sql"

    aput-object v1, v0, v9

    const-string v1, "application/typescript"

    aput-object v1, v0, v10

    const-string v1, "application/x-javascript"

    aput-object v1, v0, v11

    const-string v1, "application/x-php"

    aput-object v1, v0, v12

    const-string v1, "application/x-sh"

    aput-object v1, v0, v13

    const-string v1, "application/x-yaml"

    aput-object v1, v0, v14

    const-string v1, "application/xhtml+xml"

    aput-object v1, v0, v15

    const-string v1, "application/xml"

    aput-object v1, v0, v16

    const-string v1, "image/svg+xml"

    aput-object v1, v0, v6

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->indexExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x2

    .line 205
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->executor:Ljava/util/concurrent/ExecutorService;

    .line 206
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->jobs:Ljava/util/Map;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->context:Landroid/content/Context;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->resolver:Landroid/content/ContentResolver;

    .line 212
    new-instance p1, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    invoke-direct {p1, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    return-void
.end method

.method private addEntry(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONArray;Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 865
    invoke-direct {p0, p4}, Lcom/foxdebug/sdcard/WorkspaceIndex;->saveFile(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;)V

    .line 866
    iget-boolean v0, p4, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->isDirectory:Z

    if-eqz v0, :cond_0

    iget v0, p5, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->dirs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->dirs:I

    goto :goto_0

    :cond_0
    iget v0, p5, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->files:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->files:I

    :goto_0
    if-nez p6, :cond_1

    goto :goto_1

    .line 868
    :cond_1
    invoke-virtual {p4}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->toJSON()Lorg/json/JSONObject;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 869
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p4

    const/16 p5, 0xc8

    if-lt p4, p5, :cond_2

    .line 870
    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/sdcard/WorkspaceIndex;->flushBatch(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private appendRootsClause(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_5

    .line 1364
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1365
    :cond_0
    const-string v0, " AND root_url IN ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    .line 1367
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1368
    const-string v2, ""

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1369
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    const/16 v1, 0x2c

    .line 1370
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x3f

    .line 1371
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1372
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 1376
    const-string p2, "NULL"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 p2, 0x29

    .line 1378
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    return-void
.end method

.method private baseEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1655
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1656
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1657
    const-string p1, "type"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1658
    const-string p1, "action"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private basename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    .line 1731
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    .line 1732
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1733
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    .line 1731
    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private compileSearchPattern(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/regex/Pattern;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .line 1054
    const-string v0, "regExp"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1055
    const-string v2, "wholeWord"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1056
    const-string v3, "caseSensitive"

    invoke-virtual {p2, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1058
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz v2, :cond_1

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\b"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez p2, :cond_2

    const/16 p2, 0x4a

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 1063
    :goto_1
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method private deleteIndexedSubtree(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14

    move-object/from16 v0, p3

    .line 622
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 623
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 624
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 625
    invoke-virtual {v8, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_5

    .line 629
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 630
    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 633
    :try_start_0
    const-string v2, "files"

    move-object v3, v2

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "url"

    aput-object v4, v2, v12

    const-string v4, "is_directory"

    aput-object v4, v2, v11

    move-object v4, v3

    const-string v3, "root_url = ? AND parent_url = ?"

    move-object v5, v4

    new-array v4, v1, [Ljava/lang/String;

    aput-object p2, v4, v12

    aput-object v0, v4, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v5

    const/4 v5, 0x0

    move-object v0, p1

    .line 634
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 643
    :cond_2
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 644
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v8, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz v13, :cond_0

    .line 649
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 650
    :cond_4
    throw v0

    .line 654
    :cond_5
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v12

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 655
    new-array v5, v11, [Ljava/lang/String;

    aput-object v4, v5, v12

    const-string v6, "content"

    const-string v7, "url = ?"

    invoke-virtual {p1, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 656
    new-array v5, v1, [Ljava/lang/String;

    aput-object p2, v5, v12

    aput-object v4, v5, v11

    .line 657
    const-string v4, "files"

    const-string v6, "root_url = ? AND url = ?"

    invoke-virtual {p1, v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    :cond_6
    return v3
.end method

.method private detectEncoding([BLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1495
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0xff

    if-lt v0, v1, :cond_0

    aget-byte v0, p1, v3

    and-int/2addr v0, v5

    const/16 v1, 0xef

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v2

    and-int/2addr v0, v5

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v4

    and-int/2addr v0, v5

    const/16 v1, 0xbf

    if-ne v0, v1, :cond_0

    .line 1496
    const-string p1, "UTF-8"

    return-object p1

    .line 1498
    :cond_0
    array-length v0, p1

    const/16 v1, 0xfe

    if-lt v0, v4, :cond_1

    aget-byte v0, p1, v3

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_1

    aget-byte v0, p1, v2

    and-int/2addr v0, v5

    if-ne v0, v1, :cond_1

    .line 1499
    const-string p1, "UTF-16LE"

    return-object p1

    .line 1501
    :cond_1
    array-length v0, p1

    if-lt v0, v4, :cond_2

    aget-byte v0, p1, v3

    and-int/2addr v0, v5

    if-ne v0, v1, :cond_2

    aget-byte v0, p1, v2

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_2

    .line 1502
    const-string p1, "UTF-16BE"

    return-object p1

    .line 1504
    :cond_2
    invoke-direct {p0, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->detectUtf16ByNullPattern([B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    .line 1506
    :cond_3
    invoke-direct {p0, p2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private detectUtf16ByNullPattern([B)Ljava/lang/String;
    .locals 14

    .line 1510
    array-length v0, p1

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 1515
    :cond_0
    div-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    add-int/lit8 v6, v3, 0x1

    if-ge v6, v0, :cond_3

    .line 1517
    aget-byte v7, p1, v3

    if-nez v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 1518
    :cond_1
    aget-byte v6, p1, v6

    if-nez v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_3
    int-to-double v3, v4

    int-to-double v0, v1

    const-wide v6, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v6, v0

    cmpl-double p1, v3, v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    if-lez p1, :cond_4

    int-to-double v10, v5

    mul-double v12, v0, v8

    cmpg-double p1, v10, v12

    if-gez p1, :cond_4

    .line 1520
    const-string p1, "UTF-16LE"

    return-object p1

    :cond_4
    int-to-double v10, v5

    cmpl-double p1, v10, v6

    if-lez p1, :cond_5

    mul-double/2addr v0, v8

    cmpg-double p1, v3, v0

    if-gez p1, :cond_5

    .line 1521
    const-string p1, "UTF-16BE"

    return-object p1

    :cond_5
    return-object v2
.end method

.method private escapeLike(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1382
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%"

    const-string v1, "\\%"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    const-string v1, "\\_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fileEntryFromCursor(Landroid/database/Cursor;)Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;
    .locals 13

    .line 1346
    new-instance v0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;

    const/4 v1, 0x0

    move v2, v1

    .line 1347
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    move v4, v2

    .line 1348
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    .line 1349
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 1350
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    .line 1351
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    .line 1352
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    const/4 v9, 0x6

    .line 1353
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const/4 v4, 0x7

    .line 1354
    invoke-direct {p0, p1, v4}, Lcom/foxdebug/sdcard/WorkspaceIndex;->safeLong(Landroid/database/Cursor;I)J

    move-result-wide v9

    const/16 v4, 0x8

    .line 1355
    invoke-direct {p0, p1, v4}, Lcom/foxdebug/sdcard/WorkspaceIndex;->safeLong(Landroid/database/Cursor;I)J

    move-result-wide v11

    move-object v4, v7

    move v7, v3

    move-object v3, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v8

    move-wide v8, v9

    move-wide v10, v11

    invoke-direct/range {v0 .. v11}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V

    return-object v0
.end method

.method private fileFromUrl(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1704
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1705
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private flushBatch(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 944
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 945
    :cond_0
    const-string v0, "batch"

    invoke-direct {p0, p2, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->baseEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 946
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v1, "entries"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    .line 947
    invoke-direct {p0, p1, p2, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->send(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V

    .line 948
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private flushSearchResultBatch(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1140
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1141
    :cond_0
    const-string v0, "search-results"

    invoke-direct {p0, p2, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->baseEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 1142
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    .line 1143
    invoke-direct {p0, p1, p2, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->send(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V

    .line 1144
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private formatSafUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1687
    invoke-direct {p0, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->parseSafUrl(Ljava/lang/String;)Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;

    move-result-object p1

    .line 1688
    iget-object v0, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;->treeUrl:Ljava/lang/String;

    .line 1689
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p1, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;->docId:Ljava/lang/String;

    .line 1688
    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getFileContent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1154
    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1155
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1157
    :cond_0
    const-string v2, "size"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1158
    invoke-direct/range {p0 .. p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->normalizeModified(Lorg/json/JSONObject;)J

    move-result-wide v9

    if-eqz p4, :cond_6

    .line 1161
    iget-object v11, v1, Lcom/foxdebug/sdcard/WorkspaceIndex;->db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    invoke-virtual {v11}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v11, 0x0

    .line 1164
    :try_start_0
    const-string v13, "content"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const-string v15, "text"

    move-wide/from16 v20, v5

    const/4 v5, 0x0

    aput-object v15, v14, v5

    const/4 v6, 0x1

    aput-object v2, v14, v6

    const-string v2, "modified_date"

    const/4 v15, 0x2

    aput-object v2, v14, v15

    move v2, v15

    const-string v15, "url = ?"

    new-array v2, v6, [Ljava/lang/String;

    aput-object v4, v2, v5

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v2

    const/4 v2, 0x2

    .line 1165
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 1174
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1175
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1176
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    cmp-long v2, v7, v20

    if-eqz v2, :cond_1

    cmp-long v2, v12, v7

    if-nez v2, :cond_4

    :cond_1
    cmp-long v2, v9, v20

    if-eqz v2, :cond_2

    cmp-long v2, v14, v9

    if-nez v2, :cond_4

    .line 1178
    :cond_2
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_3

    .line 1182
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :cond_4
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1183
    :cond_5
    throw v0

    .line 1186
    :cond_6
    :goto_0
    invoke-static {v0}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->fromJSON(Lorg/json/JSONObject;)Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;

    move-result-object v0

    if-eqz p4, :cond_7

    if-nez p5, :cond_7

    .line 1188
    invoke-direct {v1, v0, v3}, Lcom/foxdebug/sdcard/WorkspaceIndex;->indexFile(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    return-object v2

    :cond_7
    const/high16 v2, 0x8000000

    const/high16 v4, 0x1000000

    if-eqz p5, :cond_8

    move v5, v2

    goto :goto_1

    :cond_8
    move v5, v4

    :goto_1
    if-eqz p5, :cond_9

    goto :goto_2

    :cond_9
    move v2, v4

    .line 1191
    :goto_2
    invoke-direct {v1, v0, v3, v5, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->readFileText(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIndexedPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 571
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    .line 576
    invoke-virtual {v0}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "files"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "path"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const-string v5, "root_url = ? AND url = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v11

    aput-object p2, v6, v0

    const-string v10, "1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 577
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 587
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 589
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_0
    return-object p3

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 590
    :cond_4
    throw p1
.end method

.method private getSurrounding(Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;
    .locals 6

    move v0, p3

    :goto_0
    const/16 v1, 0xd

    const/16 v2, 0xa

    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    .line 1597
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_1

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v3, p4

    .line 1603
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1604
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_3

    if-ne v4, v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    sub-int v1, v3, v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xa0

    if-le v1, v5, :cond_4

    sub-int v1, p4, p3

    .line 1612
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v5, v1

    .line 1613
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1614
    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v1, v5

    sub-int/2addr p3, v5

    .line 1616
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p4, v1

    .line 1617
    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_4

    :cond_4
    move p3, v0

    move p4, v3

    .line 1620
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1621
    const-string v5, "..."

    if-le p3, v0, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    :cond_5
    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p4, v3, :cond_6

    .line 1623
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 p1, 0x2

    .line 1626
    new-array p1, p1, [Ljava/lang/String;

    .line 1627
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "[\\r\\n]+"

    const-string v0, " \u23ce "

    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    .line 1628
    invoke-virtual {p2, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    return-object p1
.end method

.method private getWorkspaceTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v1, 0x0

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    .line 599
    invoke-virtual {v0}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "workspaces"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "title"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const-string v5, "root_url = ?"

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v11

    const-string v10, "1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 600
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 610
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 612
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 614
    :cond_2
    invoke-direct {p0, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->basename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_3

    .line 612
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 613
    :cond_3
    throw p1
.end method

.method private globMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    if-eqz p2, :cond_4

    .line 1447
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 1448
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1449
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 1450
    const-string v0, "**"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1452
    :cond_1
    invoke-direct {p0, p2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->globToRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1453
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1454
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1456
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/2addr v0, v2

    .line 1457
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1458
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private globToRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1463
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1464
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 1466
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    add-int/lit8 v1, v1, 0x2

    .line 1469
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 1470
    const-string v2, "(?:.*/)?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1473
    :cond_0
    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_1

    .line 1476
    :cond_1
    const-string v2, "[^/]*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v3, 0x3f

    if-ne v2, v3, :cond_3

    const/16 v2, 0x2e

    .line 1479
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1480
    :cond_3
    const-string v3, "\\.[]{}()+-^$|"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    const/16 v3, 0x5c

    .line 1481
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1483
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/16 p1, 0x24

    .line 1486
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private guessMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1738
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1739
    const-string v1, ".js"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "application/javascript"

    if-eqz v1, :cond_1

    return-object v2

    .line 1740
    :cond_1
    const-string v1, ".ts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, ".tsx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1741
    :cond_2
    const-string v1, ".jsx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v2

    .line 1742
    :cond_3
    const-string v1, ".json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "application/json"

    return-object p1

    .line 1743
    :cond_4
    const-string v1, ".svg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "image/svg+xml"

    return-object p1

    .line 1744
    :cond_5
    const-string v1, ".html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ".htm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 1745
    :cond_6
    const-string v1, ".css"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "text/css"

    return-object p1

    .line 1746
    :cond_7
    const-string v1, ".md"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p1, "text/markdown"

    return-object p1

    .line 1747
    :cond_8
    const-string v1, ".txt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "text/plain"

    return-object p1

    .line 1748
    :cond_9
    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "application/xml"

    return-object p1

    :cond_a
    return-object v0

    .line 1744
    :cond_b
    :goto_0
    const-string p1, "text/html"

    return-object p1

    .line 1740
    :cond_c
    :goto_1
    const-string p1, "application/typescript"

    return-object p1
.end method

.method private hasBinaryChars(Ljava/lang/String;)Z
    .locals 5

    .line 1564
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x800

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1566
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ltz v3, :cond_0

    const/16 v4, 0x8

    if-le v3, v4, :cond_3

    :cond_0
    const/16 v4, 0xb

    if-eq v3, v4, :cond_3

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    const/16 v4, 0x1f

    if-le v3, v4, :cond_3

    :cond_1
    const/16 v4, 0x7f

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method private indexFile(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1200
    iget-boolean v0, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->isDirectory:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->isBinary(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v2, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->size:J

    const-wide/32 v4, 0x200000

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x200000

    const/high16 v2, 0x80000

    .line 1205
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->readFileText(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1212
    :cond_1
    invoke-direct {p0, p2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1214
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1215
    const-string v3, "url"

    iget-object v4, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v3, "size"

    iget-wide v4, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1217
    const-string v3, "modified_date"

    iget-wide v4, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->modifiedDate:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1218
    const-string v3, "encoding"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const-string p2, "text"

    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const-string p2, "lower_text"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string p2, "indexed_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1222
    iget-object p2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    invoke-virtual {p2}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v3, "content"

    invoke-virtual {p2, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to index "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WorkspaceIndex"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object v1
.end method

.method private isBinary(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;)Z
    .locals 0

    .line 1491
    invoke-virtual {p1}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->isBinary()Z

    move-result p1

    return p1
.end method

.method private isExcluded(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 0

    .line 1434
    invoke-direct {p0, p1, p2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->matchesAny(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result p1

    return p1
.end method

.method private isExplicitlyIncluded(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 3

    .line 1416
    const-string v0, "path"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1418
    :cond_0
    const-string v0, "include"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->splitPatterns(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 1419
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->matchesAny(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method private isSafUrl(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1683
    const-string v0, "content:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSingleByteEncoding(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1526
    const-string p1, ""

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1527
    :goto_0
    const-string v0, "UTF-16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UTF-32"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isSupportedUrl(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1679
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "content:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private joinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_4

    .line 1724
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    .line 1725
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1726
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1727
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1

    :cond_4
    :goto_1
    return-object p2
.end method

.method private lineColumn(II)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1587
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1588
    const-string v1, "row"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1589
    const-string p1, "column"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method private looksBinary([B)Z
    .locals 12

    .line 1531
    array-length v0, p1

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v0, :cond_4

    .line 1537
    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_1

    return v5

    :cond_1
    const/16 v5, 0x20

    if-ge v6, v5, :cond_2

    const/16 v5, 0x9

    if-eq v6, v5, :cond_2

    const/16 v5, 0xa

    if-eq v6, v5, :cond_2

    const/16 v5, 0xd

    if-eq v6, v5, :cond_2

    const/16 v5, 0xc

    if-eq v6, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    const/16 v5, 0x80

    if-lt v6, v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    int-to-double v2, v3

    int-to-double v6, v0

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v8, v6

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    .line 1550
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    cmpl-double p1, v2, v8

    if-lez p1, :cond_5

    int-to-double v2, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    cmpg-double p1, v2, v6

    if-gez p1, :cond_5

    return v5

    :cond_5
    return v1
.end method

.method private matchesAny(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 1439
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1440
    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1441
    invoke-direct {p0, p1, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->globMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private mergeIndexedFiles(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1296
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1297
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 1298
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const-string v7, "url"

    if-ge v5, v6, :cond_3

    move-object/from16 v6, p1

    .line 1299
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 1301
    :cond_0
    const-string v9, ""

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1302
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 1303
    :cond_1
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_8

    .line 1306
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_3

    .line 1308
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "is_directory = 0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1309
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    invoke-direct {v1, v5, v6, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->appendRootsClause(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/json/JSONArray;)V

    const/4 v8, 0x0

    .line 1313
    :try_start_0
    iget-object v0, v1, Lcom/foxdebug/sdcard/WorkspaceIndex;->db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    .line 1315
    invoke-virtual {v0}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "files"

    const/16 v0, 0x9

    new-array v11, v0, [Ljava/lang/String;

    const-string v0, "root_url"

    aput-object v0, v11, v4

    const-string v0, "parent_url"

    const/4 v12, 0x1

    aput-object v0, v11, v12

    const/4 v0, 0x2

    aput-object v7, v11, v0

    const-string v0, "name"

    const/4 v7, 0x3

    aput-object v0, v11, v7

    const-string v0, "path"

    const/4 v7, 0x4

    aput-object v0, v11, v7

    const-string v0, "mime"

    const/4 v7, 0x5

    aput-object v0, v11, v7

    const-string v0, "is_directory"

    const/4 v7, 0x6

    aput-object v0, v11, v7

    const-string v0, "size"

    const/4 v7, 0x7

    aput-object v0, v11, v7

    const-string v0, "modified_date"

    const/16 v7, 0x8

    aput-object v0, v11, v7

    .line 1329
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v0, v4, [Ljava/lang/String;

    .line 1330
    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    .line 1316
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1335
    :cond_5
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1336
    invoke-direct {v1, v8}, Lcom/foxdebug/sdcard/WorkspaceIndex;->fileEntryFromCursor(Landroid/database/Cursor;)Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;

    move-result-object v0

    .line 1337
    iget-object v4, v0, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->url:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_8

    .line 1340
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1341
    :cond_7
    throw v0

    :cond_8
    :goto_3
    return-object v2
.end method

.method private normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1554
    const-string v0, "UTF-8"

    if-eqz p1, :cond_1

    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1558
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method private normalizeMime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1753
    invoke-direct {p0, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->guessMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1754
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/octet-stream"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p1

    :cond_1
    return-object p2
.end method

.method private normalizeModified(Lorg/json/JSONObject;)J
    .locals 5

    .line 1718
    const-string v0, "modifiedDate"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 1719
    const-string v0, "lastModified"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v3
.end method

.method private parseSafUrl(Ljava/lang/String;)Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;
    .locals 3

    .line 1695
    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 1696
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 1697
    new-instance v0, Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-direct {v0, v1, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1699
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1700
    new-instance v1, Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;

    invoke-static {v0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private position(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1580
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1581
    const-string v1, "start"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1582
    const-string p1, "end"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private readBytes(Ljava/lang/String;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1253
    :try_start_0
    invoke-direct {p0, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->isSafUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->formatSafUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 1256
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->fileFromUrl(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    :goto_0
    const/4 p1, 0x0

    if-nez v0, :cond_2

    .line 1258
    new-array p1, p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1274
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p1

    .line 1260
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    .line 1261
    new-array v2, v2, [B

    move v3, p1

    .line 1264
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    add-int/2addr v3, v4

    if-le v3, p2, :cond_3

    sub-int/2addr v3, p2

    sub-int/2addr v4, v3

    .line 1267
    invoke-virtual {v1, v2, p1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 1270
    :cond_3
    invoke-virtual {v1, v2, p1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 1272
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 1274
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1275
    :cond_6
    throw p1
.end method

.method private readEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v5, p3

    const-string v14, "Unable to refresh SAF index entry "

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v0, p4

    .line 507
    invoke-direct {v1, v3, v4, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->getIndexedPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-direct {v1, v5}, Lcom/foxdebug/sdcard/WorkspaceIndex;->isSafUrl(Ljava/lang/String;)Z

    move-result v2

    const-string v6, "vnd.android.document/directory"

    if-eqz v2, :cond_6

    .line 511
    :try_start_0
    iget-object v7, v1, Lcom/foxdebug/sdcard/WorkspaceIndex;->resolver:Landroid/content/ContentResolver;

    .line 513
    invoke-direct {v1, v5}, Lcom/foxdebug/sdcard/WorkspaceIndex;->formatSafUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v2, 0x4

    new-array v9, v2, [Ljava/lang/String;

    const-string v2, "_display_name"

    const/4 v13, 0x0

    aput-object v2, v9, v13

    const-string v2, "mime_type"

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const-string v2, "_size"

    const/4 v11, 0x2

    aput-object v2, v9, v11

    const-string v2, "last_modified"

    const/4 v12, 0x3

    aput-object v2, v9, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v2, v11

    const/4 v11, 0x0

    move/from16 v16, v12

    const/4 v12, 0x0

    move/from16 v17, v10

    const/4 v10, 0x0

    move v15, v2

    move/from16 v2, v17

    const/16 p4, 0x0

    .line 512
    :try_start_1
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_2

    .line 524
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 526
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->normalizeMime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move-object v6, v2

    .line 528
    new-instance v2, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;

    .line 533
    invoke-direct {v1, v0, v8}, Lcom/foxdebug/sdcard/WorkspaceIndex;->joinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-direct {v1, v7, v15}, Lcom/foxdebug/sdcard/WorkspaceIndex;->safeLong(Landroid/database/Cursor;I)J

    move-result-wide v10

    const/4 v12, 0x3

    .line 537
    invoke-direct {v1, v7, v12}, Lcom/foxdebug/sdcard/WorkspaceIndex;->safeLong(Landroid/database/Cursor;I)J

    move-result-wide v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v15, v8

    move-object v8, v6

    move-object v6, v15

    move-object v15, v7

    move-object v7, v0

    :try_start_3
    invoke-direct/range {v2 .. v13}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v15, :cond_1

    .line 543
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v7, v15

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v15, v7

    goto :goto_3

    :cond_2
    :goto_0
    move-object v15, v7

    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p4

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    const/16 p4, 0x0

    :goto_1
    move-object/from16 v15, p4

    goto :goto_4

    :catch_3
    move-exception v0

    const/16 p4, 0x0

    :goto_2
    move-object/from16 v7, p4

    .line 540
    :goto_3
    :try_start_4
    const-string v2, "WorkspaceIndex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v7, :cond_4

    .line 543
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p4

    :catchall_3
    move-exception v0

    move-object v15, v7

    :goto_4
    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 544
    :cond_5
    throw v0

    :cond_6
    const/16 p4, 0x0

    .line 547
    invoke-direct {v1, v5}, Lcom/foxdebug/sdcard/WorkspaceIndex;->fileFromUrl(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 548
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    return-object p4

    :cond_7
    move-object v3, v6

    .line 549
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 550
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    move-object v4, v2

    .line 551
    new-instance v2, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;

    .line 556
    invoke-direct {v1, v0, v6}, Lcom/foxdebug/sdcard/WorkspaceIndex;->joinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v9, :cond_8

    move-object v8, v3

    goto :goto_5

    .line 559
    :cond_8
    invoke-direct {v1, v6}, Lcom/foxdebug/sdcard/WorkspaceIndex;->guessMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->normalizeMime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 561
    :goto_5
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 562
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v13}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V

    return-object v2
.end method

.method private readFileText(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1237
    iget-boolean v0, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->isDirectory:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->isBinary(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v2, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->size:J

    int-to-long v4, p3

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 1241
    :cond_0
    iget-object p1, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->url:Ljava/lang/String;

    add-int/lit8 v0, p3, 0x1

    invoke-direct {p0, p1, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->readBytes(Ljava/lang/String;I)[B

    move-result-object p1

    .line 1242
    array-length v0, p1

    if-le v0, p3, :cond_1

    return-object v1

    .line 1243
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->detectEncoding([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1244
    invoke-direct {p0, p2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->isSingleByteEncoding(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->looksBinary([B)Z

    move-result p3

    if-eqz p3, :cond_2

    return-object v1

    .line 1245
    :cond_2
    new-instance p3, Ljava/lang/String;

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1246
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, p4, :cond_4

    invoke-direct {p0, p3}, Lcom/foxdebug/sdcard/WorkspaceIndex;->hasBinaryChars(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return-object p3

    :cond_4
    :goto_0
    return-object v1
.end method

.method private runQuery(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 875
    const-string v0, "roots"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 876
    const-string v1, "text"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 877
    const-string v3, "url"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 878
    const-string v3, "includeDirectories"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 879
    const-string v5, "limit"

    const/16 v6, 0xc8

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x3e8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 880
    const-string v7, "offset"

    invoke-virtual {p1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "cursor"

    invoke-virtual {p1, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 882
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "1 = 1"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 883
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 884
    invoke-direct {p0, v7, v9, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->appendRootsClause(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/json/JSONArray;)V

    .line 885
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 886
    const-string v0, " AND url = ?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez v3, :cond_1

    .line 890
    const-string v0, " AND is_directory = 0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "%"

    if-lez v0, :cond_2

    .line 893
    const-string v0, " AND (name LIKE ? ESCAPE \'\\\' OR path LIKE ? ESCAPE \'\\\')"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->escapeLike(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 895
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->escapeLike(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "CASE WHEN name LIKE ? ESCAPE \'\\\' THEN 0 ELSE 1 END, name COLLATE NOCASE, path COLLATE NOCASE"

    goto :goto_0

    .line 906
    :cond_3
    const-string v0, "name COLLATE NOCASE, path COLLATE NOCASE"

    .line 909
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT root_url, parent_url, url, name, path, mime, is_directory, size, modified_date FROM files WHERE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT ? OFFSET ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v5, 0x1

    .line 916
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 923
    :try_start_0
    iget-object v3, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    invoke-virtual {v3}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/String;

    invoke-interface {v9, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v3, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 924
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 925
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, v5, :cond_4

    move v4, v6

    goto :goto_2

    .line 929
    :cond_4
    invoke-direct {p0, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->fileEntryFromCursor(Landroid/database/Cursor;)Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 932
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 935
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 936
    const-string v2, "entries"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v4, :cond_7

    .line 937
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    :cond_7
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_3
    invoke-virtual {v0, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 938
    const-string p1, "hasMore"

    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_8

    .line 932
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 933
    :cond_8
    throw p1
.end method

.method private runScan(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v3, p3

    .line 309
    const-string v9, "files"

    iget-boolean v2, v0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->cancelled:Z

    const-string v10, "cancelled"

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    .line 310
    iget-object v0, v0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    invoke-direct {v1, v0, v10}, Lcom/foxdebug/sdcard/WorkspaceIndex;->baseEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v3, v0, v11}, Lcom/foxdebug/sdcard/WorkspaceIndex;->send(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V

    return-void

    .line 314
    :cond_0
    const-string v2, "rootUrl"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 315
    invoke-direct {v1, v12}, Lcom/foxdebug/sdcard/WorkspaceIndex;->basename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v13, "title"

    invoke-virtual {v8, v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 316
    const-string v2, "excludeFolders"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 317
    const-string v2, "showHiddenFiles"

    invoke-virtual {v8, v2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 318
    const-string v2, "defaultEncoding"

    const-string v4, "UTF-8"

    invoke-virtual {v8, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 319
    const-string v2, "indexContent"

    invoke-virtual {v8, v2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 320
    const-string v2, "emitEntries"

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move-object/from16 v20, v10

    move-object v10, v15

    .line 322
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 323
    new-instance v2, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;-><init>(Lcom/foxdebug/sdcard/WorkspaceIndex-IA;)V

    .line 325
    iget-object v3, v0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v21, v4

    const-string v4, "scanning"

    move-object/from16 v22, v5

    const-string v5, "Scanning project files"

    move-object/from16 v21, v22

    move/from16 v22, v11

    move-object/from16 v11, v21

    move-object/from16 v21, v2

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v7}, Lcom/foxdebug/sdcard/WorkspaceIndex;->sendStatus(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 327
    iget-object v2, v1, Lcom/foxdebug/sdcard/WorkspaceIndex;->db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    invoke-virtual {v2}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 328
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 330
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 331
    const-string v4, "root_url"

    invoke-virtual {v3, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v4, "indexed_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 334
    const-string v4, "options_hash"

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v4, "workspaces"

    invoke-virtual {v2, v4, v11, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 336
    const-string v3, "root_url = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v12, v4, v22

    invoke-virtual {v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 338
    invoke-direct {v1, v12}, Lcom/foxdebug/sdcard/WorkspaceIndex;->isSafUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    invoke-direct {v1, v12}, Lcom/foxdebug/sdcard/WorkspaceIndex;->parseSafUrl(Ljava/lang/String;)Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;

    move-result-object v3

    .line 340
    iget-object v4, v3, Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;->treeUrl:Ljava/lang/String;

    iget-object v6, v3, Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;->docId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, v12

    move-object v3, v9

    move-object v9, v14

    move-object v5, v12

    move-object v8, v14

    move/from16 v11, v16

    move-object/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v19

    move-object/from16 v16, v21

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v3, p3

    move-object v2, v0

    move-object/from16 v0, v20

    :try_start_1
    invoke-direct/range {v1 .. v16}, Lcom/foxdebug/sdcard/WorkspaceIndex;->scanSafDir(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZLjava/lang/String;ZZLorg/json/JSONArray;Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;)V

    move v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    goto :goto_0

    :cond_1
    move-object v4, v12

    move-object v7, v14

    move-object v14, v15

    move/from16 v11, v16

    move-object/from16 v12, v17

    move/from16 v13, v19

    move-object/from16 v0, v20

    move-object/from16 v15, v21

    move-object/from16 v17, v2

    move/from16 v2, v18

    move-object/from16 v18, v9

    .line 358
    invoke-direct {v1, v4}, Lcom/foxdebug/sdcard/WorkspaceIndex;->fileFromUrl(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    move-object v6, v4

    move-object v8, v7

    move-object/from16 v3, p3

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move v12, v2

    move-object/from16 v2, p1

    .line 359
    invoke-direct/range {v1 .. v15}, Lcom/foxdebug/sdcard/WorkspaceIndex;->scanFileDir(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZLjava/lang/String;ZZLorg/json/JSONArray;Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;)V

    .line 377
    :goto_0
    iget-boolean v4, v2, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->cancelled:Z

    if-eqz v4, :cond_2

    .line 378
    iget-object v2, v2, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->baseEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/foxdebug/sdcard/WorkspaceIndex;->send(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :cond_2
    const/4 v4, 0x0

    if-eqz v13, :cond_3

    .line 381
    :try_start_2
    iget-object v0, v2, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v14}, Lcom/foxdebug/sdcard/WorkspaceIndex;->flushBatch(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 382
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 387
    iget-object v0, v2, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    const-string v2, "done"

    invoke-direct {v1, v0, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->baseEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 388
    iget v2, v15, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->files:I

    move-object/from16 v5, v18

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 389
    const-string v2, "dirs"

    iget v5, v15, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->dirs:I

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 390
    const-string v2, "indexed"

    iget v5, v15, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->indexed:I

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 391
    invoke-direct {v1, v3, v0, v4}, Lcom/foxdebug/sdcard/WorkspaceIndex;->send(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    .line 384
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 385
    throw v0
.end method

.method private runSearch(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    .line 953
    const-string v2, "files"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    .line 954
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 955
    :cond_0
    const-string v3, "roots"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/foxdebug/sdcard/WorkspaceIndex;->mergeIndexedFiles(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v9

    .line 956
    const-string v2, "search"

    const-string v10, ""

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 957
    const-string v11, "replace"

    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 958
    const-string v4, "mode"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 959
    const-string v2, "options"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    .line 960
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    move-object v14, v2

    .line 961
    const-string v2, "overlays"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    .line 962
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    move-object v15, v2

    .line 963
    const-string v2, "defaultEncoding"

    const-string v4, "UTF-8"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 964
    const-string v2, "useIndex"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 965
    const-string v2, "batchResults"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 967
    invoke-direct {v1, v3, v14}, Lcom/foxdebug/sdcard/WorkspaceIndex;->compileSearchPattern(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 968
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 970
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v5

    move-object v6, v3

    .line 974
    iget-object v3, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    move-object v7, v6

    const/4 v6, 0x0

    move-object/from16 v19, v7

    const/4 v7, 0x1

    move/from16 v20, v4

    const-string v4, "searching"

    move/from16 v21, v5

    const-string v5, "Searching files"

    move-object/from16 v22, v19

    move-object/from16 v19, v12

    move-object/from16 v12, v22

    move/from16 v22, v21

    move-object/from16 v21, v15

    move/from16 v15, v22

    move-object/from16 v22, v10

    move-object v10, v2

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v7}, Lcom/foxdebug/sdcard/WorkspaceIndex;->sendStatus(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    move-object v7, v2

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v15, :cond_f

    .line 977
    iget-boolean v4, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->cancelled:Z

    if-eqz v4, :cond_3

    return-void

    :cond_3
    move v4, v2

    .line 978
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v15, :cond_4

    goto :goto_1

    :cond_4
    mul-int/lit8 v3, v23, 0x64

    .line 979
    div-int/2addr v3, v15

    :goto_1
    if-eq v3, v0, :cond_5

    .line 981
    iget-object v0, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    invoke-direct {v1, v7, v0, v3}, Lcom/foxdebug/sdcard/WorkspaceIndex;->sendProgress(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;I)V

    move/from16 v25, v3

    goto :goto_2

    :cond_5
    move/from16 v25, v0

    .line 984
    :goto_2
    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->isSupportedUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_3
    add-int/lit8 v23, v23, 0x1

    move-object/from16 v5, v16

    move/from16 v16, v4

    move-object v4, v5

    move/from16 v5, v17

    move-object/from16 v17, v9

    goto/16 :goto_8

    .line 988
    :cond_6
    invoke-direct {v1, v2, v14}, Lcom/foxdebug/sdcard/WorkspaceIndex;->shouldSkipSearchFile(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 993
    :cond_7
    invoke-direct {v1, v2, v14}, Lcom/foxdebug/sdcard/WorkspaceIndex;->isExplicitlyIncluded(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v6

    move-object/from16 v5, v16

    move/from16 v16, v4

    move-object v4, v5

    move/from16 v5, v17

    move-object/from16 v17, v9

    move-object v9, v3

    move-object/from16 v3, v21

    .line 997
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/foxdebug/sdcard/WorkspaceIndex;->getFileContent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v21, v3

    if-nez v0, :cond_8

    goto/16 :goto_7

    .line 1014
    :cond_8
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_a

    if-nez v19, :cond_9

    move-object/from16 v3, v22

    goto :goto_4

    :cond_9
    move-object/from16 v3, v19

    .line 1015
    :goto_4
    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1016
    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    iget-object v3, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    const-string v9, "replace-result"

    invoke-direct {v1, v3, v9}, Lcom/foxdebug/sdcard/WorkspaceIndex;->baseEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1018
    const-string v9, "file"

    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1019
    const-string v2, "text"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1020
    invoke-direct {v1, v7, v3, v6}, Lcom/foxdebug/sdcard/WorkspaceIndex;->send(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V

    goto :goto_5

    .line 1022
    :cond_a
    invoke-direct {v1, v2, v0, v10}, Lcom/foxdebug/sdcard/WorkspaceIndex;->searchInContent(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    if-eqz v18, :cond_c

    .line 1025
    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1026
    const-string v2, "matches"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int v0, v24, v0

    .line 1028
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ge v2, v3, :cond_b

    const/16 v2, 0x258

    if-lt v0, v2, :cond_e

    .line 1031
    :cond_b
    iget-object v0, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    invoke-direct {v1, v7, v0, v12}, Lcom/foxdebug/sdcard/WorkspaceIndex;->flushSearchResultBatch(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONArray;)V

    const/4 v0, 0x0

    goto :goto_6

    .line 1035
    :cond_c
    iget-object v2, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    const-string v3, "search-result"

    invoke-direct {v1, v2, v3}, Lcom/foxdebug/sdcard/WorkspaceIndex;->baseEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1036
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1037
    invoke-direct {v1, v7, v2, v6}, Lcom/foxdebug/sdcard/WorkspaceIndex;->send(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V

    :cond_d
    :goto_5
    move/from16 v0, v24

    :cond_e
    :goto_6
    add-int/lit8 v23, v23, 0x1

    move/from16 v24, v0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v21, v3

    .line 1005
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Skipping unreadable search file "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WorkspaceIndex"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    add-int/lit8 v23, v23, 0x1

    :goto_8
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v16, v4

    move-object/from16 v9, v17

    move/from16 v0, v25

    move/from16 v17, v5

    goto/16 :goto_0

    :cond_f
    if-eqz v18, :cond_10

    .line 1046
    iget-object v0, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    invoke-direct {v1, v7, v0, v12}, Lcom/foxdebug/sdcard/WorkspaceIndex;->flushSearchResultBatch(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1048
    :cond_10
    iget-object v0, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    invoke-direct {v1, v7, v0, v3}, Lcom/foxdebug/sdcard/WorkspaceIndex;->sendProgress(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;I)V

    .line 1049
    iget-object v0, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "done-replacing"

    goto :goto_9

    :cond_11
    const-string v2, "done-searching"

    :goto_9
    invoke-direct {v1, v0, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->baseEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v7, v0, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->send(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private runUpdate(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 395
    const-string v2, "workspaces"

    const-string v3, "rootUrl"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 396
    invoke-direct {v1, v4}, Lcom/foxdebug/sdcard/WorkspaceIndex;->getWorkspaceTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "title"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 397
    const-string v3, "removed"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 398
    const-string v7, "added"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 399
    const-string v10, "excludeFolders"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 400
    const-string v11, "showHiddenFiles"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 401
    const-string v13, "defaultEncoding"

    const-string v14, "UTF-8"

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object v13, v1, Lcom/foxdebug/sdcard/WorkspaceIndex;->db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    invoke-virtual {v13}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 406
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 408
    const-string v14, ""

    if-eqz v6, :cond_2

    move v15, v12

    move/from16 v16, v15

    .line 409
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v15, v12, :cond_3

    .line 410
    invoke-virtual {v6, v15, v14}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 411
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    invoke-direct {v1, v13, v4, v12}, Lcom/foxdebug/sdcard/WorkspaceIndex;->deleteIndexedSubtree(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v16, v16, v12

    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v13

    goto/16 :goto_b

    :cond_2
    const/16 v16, 0x0

    :cond_3
    if-eqz v9, :cond_d

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 417
    :goto_2
    :try_start_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v12, v6, :cond_c

    .line 418
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_5

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    :cond_4
    :goto_3
    move-object/from16 v28, v3

    move-object v0, v5

    move-object/from16 v29, v7

    move-object/from16 v23, v9

    move/from16 p1, v12

    move-object/from16 v27, v13

    move-object/from16 v26, v14

    goto :goto_5

    :cond_5
    move-object/from16 v18, v0

    .line 420
    const-string v0, "url"

    invoke-virtual {v6, v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v2

    .line 421
    const-string v2, "parentUrl"

    invoke-virtual {v6, v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    .line 424
    :cond_6
    invoke-direct {v1, v13, v4, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->deleteIndexedSubtree(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    add-int v20, v16, v6

    .line 425
    invoke-direct {v1, v4, v2, v0, v8}, Lcom/foxdebug/sdcard/WorkspaceIndex;->readEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_7

    move-object/from16 v21, v3

    goto :goto_4

    :cond_7
    if-nez v11, :cond_8

    .line 427
    :try_start_2
    iget-object v6, v2, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->name:Ljava/lang/String;

    move-object/from16 v21, v3

    const-string v3, "."

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_9

    :goto_4
    move-object v0, v5

    move-object/from16 v29, v7

    move-object/from16 v23, v9

    move/from16 p1, v12

    move-object/from16 v27, v13

    move-object/from16 v26, v14

    move/from16 v16, v20

    move-object/from16 v28, v21

    :goto_5
    const/16 v17, 0x0

    move-object v5, v4

    move-object v9, v8

    goto/16 :goto_8

    :cond_8
    move-object/from16 v21, v3

    .line 429
    :cond_9
    :try_start_3
    invoke-direct {v1, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->saveFile(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;)V

    add-int/lit8 v22, v15, 0x1

    .line 431
    iget-boolean v3, v2, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->isDirectory:Z

    if-eqz v3, :cond_b

    iget-object v3, v2, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->url:Ljava/lang/String;

    iget-object v6, v2, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->path:Ljava/lang/String;

    .line 433
    invoke-direct {v1, v4, v3, v6, v10}, Lcom/foxdebug/sdcard/WorkspaceIndex;->shouldSkipDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 435
    new-instance v3, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "update-"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;-><init>(Ljava/lang/String;)V

    .line 436
    new-instance v15, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;

    const/4 v6, 0x0

    invoke-direct {v15, v6}, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;-><init>(Lcom/foxdebug/sdcard/WorkspaceIndex-IA;)V

    .line 437
    invoke-direct {v1, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->isSafUrl(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 438
    invoke-direct {v1, v4}, Lcom/foxdebug/sdcard/WorkspaceIndex;->parseSafUrl(Ljava/lang/String;)Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;

    move-result-object v6

    .line 439
    iget-object v6, v6, Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;->treeUrl:Ljava/lang/String;

    move-object/from16 v16, v3

    .line 444
    invoke-direct {v1, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->parseSafUrl(Ljava/lang/String;)Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;

    move-result-object v3

    iget-object v3, v3, Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;->docId:Ljava/lang/String;

    move-object/from16 v23, v9

    move-object v9, v8

    iget-object v8, v2, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->path:Ljava/lang/String;

    move-object/from16 v2, v16

    move-object/from16 v16, v15

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v24, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v3

    const/4 v3, 0x0

    move-object/from16 v25, v13

    const/4 v13, 0x0

    move-object/from16 v26, v14

    const/4 v14, 0x0

    move-object/from16 v29, v7

    move/from16 p1, v12

    move-object/from16 v12, v18

    move-object/from16 v28, v21

    move-object/from16 v27, v25

    const/16 v17, 0x0

    move-object v7, v0

    move-object/from16 v0, v24

    .line 439
    :try_start_4
    invoke-direct/range {v1 .. v16}, Lcom/foxdebug/sdcard/WorkspaceIndex;->scanSafDir(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZLjava/lang/String;ZZLorg/json/JSONArray;Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;)V

    move-object/from16 v15, v16

    goto :goto_6

    :cond_a
    move-object v6, v0

    move-object v0, v5

    move-object/from16 v29, v7

    move-object/from16 v23, v9

    move/from16 p1, v12

    move-object/from16 v27, v13

    move-object/from16 v26, v14

    move-object/from16 v16, v15

    move-object/from16 v28, v21

    const/16 v17, 0x0

    move-object v9, v8

    .line 461
    invoke-direct {v1, v6}, Lcom/foxdebug/sdcard/WorkspaceIndex;->fileFromUrl(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iget-object v7, v2, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->path:Ljava/lang/String;

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v3

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object/from16 v15, v16

    move-object/from16 v11, v18

    .line 457
    invoke-direct/range {v1 .. v15}, Lcom/foxdebug/sdcard/WorkspaceIndex;->scanFileDir(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZLjava/lang/String;ZZLorg/json/JSONArray;Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;)V

    move-object v5, v4

    move v11, v10

    move-object v10, v9

    move-object v9, v8

    .line 474
    :goto_6
    iget v1, v15, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->files:I

    iget v2, v15, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->dirs:I

    add-int/2addr v1, v2

    add-int v22, v22, v1

    goto :goto_7

    :cond_b
    move-object v0, v5

    move-object/from16 v29, v7

    move-object/from16 v23, v9

    move/from16 p1, v12

    move-object/from16 v27, v13

    move-object/from16 v26, v14

    move-object/from16 v28, v21

    const/16 v17, 0x0

    move-object v5, v4

    move-object v9, v8

    :goto_7
    move/from16 v16, v20

    move/from16 v15, v22

    :goto_8
    add-int/lit8 v12, p1, 0x1

    move-object/from16 v1, p0

    move-object v4, v5

    move-object v8, v9

    move-object/from16 v2, v19

    move-object/from16 v9, v23

    move-object/from16 v14, v26

    move-object/from16 v13, v27

    move-object/from16 v3, v28

    move-object/from16 v7, v29

    move-object v5, v0

    move-object/from16 v0, v18

    goto/16 :goto_2

    :cond_c
    const/16 v17, 0x0

    move v12, v15

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v27, v13

    goto :goto_a

    :cond_d
    const/16 v17, 0x0

    move/from16 v12, v17

    :goto_9
    move-object/from16 v19, v2

    move-object/from16 v28, v3

    move-object v0, v5

    move-object/from16 v29, v7

    move-object v9, v8

    move-object/from16 v27, v13

    move-object v5, v4

    move/from16 v1, v16

    .line 479
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 480
    const-string v3, "root_url"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v2, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v0, "indexed_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 483
    const-string v0, "root_url = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v5, v3, v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v5, v19

    move-object/from16 v4, v27

    :try_start_5
    invoke-virtual {v4, v5, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v6, 0x0

    .line 489
    invoke-virtual {v4, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 490
    :cond_e
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 492
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 495
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v2, v29

    .line 496
    invoke-virtual {v0, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v2, v28

    .line 497
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    :goto_a
    move-object/from16 v4, v27

    .line 492
    :goto_b
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 493
    throw v0
.end method

.method private safeLong(Landroid/database/Cursor;I)J
    .locals 3

    const-wide/16 v0, 0x0

    .line 1710
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 1711
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide v0
.end method

.method private saveFile(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;)V
    .locals 3

    .line 1279
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1280
    const-string v1, "url"

    iget-object v2, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-string v1, "root_url"

    iget-object v2, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->rootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const-string v1, "parent_url"

    iget-object v2, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->parentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const-string v1, "path"

    iget-object v2, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string v1, "name"

    iget-object v2, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const-string v1, "mime"

    iget-object v2, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-boolean v1, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->isDirectory:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_directory"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1287
    iget-wide v1, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1288
    iget-wide v1, p1, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->modifiedDate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "modified_date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "indexed_at"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1290
    invoke-direct {p0, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->isBinary(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "binary"

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const-string v2, "skipped_reason"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    invoke-virtual {p1}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "files"

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private scanFileDir(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZLjava/lang/String;ZZLorg/json/JSONArray;Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v2, p4

    .line 682
    const-string v9, "Skipping unreadable directory "

    const-string v10, "WorkspaceIndex"

    iget-boolean v0, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->cancelled:Z

    if-nez v0, :cond_8

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 685
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v11, :cond_1

    goto/16 :goto_5

    .line 692
    :cond_1
    array-length v12, v11

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    if-ge v13, v12, :cond_8

    aget-object v0, v11, v13

    .line 693
    iget-boolean v2, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->cancelled:Z

    if-eqz v2, :cond_2

    goto/16 :goto_5

    .line 694
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez p9, :cond_3

    .line 695
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v6, p14

    move-object v3, v9

    :goto_1
    move-object v4, v10

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v13

    :goto_2
    move-object/from16 v11, p10

    goto/16 :goto_4

    .line 697
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v21

    .line 698
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v3, p6

    .line 699
    invoke-direct {v1, v3, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->joinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v21, :cond_4

    .line 700
    const-string v4, "vnd.android.document/directory"

    goto :goto_3

    :cond_4
    invoke-direct {v1, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->guessMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/foxdebug/sdcard/WorkspaceIndex;->normalizeMime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object/from16 v20, v4

    .line 701
    new-instance v5, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;

    .line 709
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 710
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    move-object/from16 v15, p3

    move-object/from16 v16, p5

    move-object/from16 v18, v2

    move-object v14, v5

    invoke-direct/range {v14 .. v25}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V

    move-object/from16 v14, v17

    move-object/from16 v15, v19

    .line 713
    iget-object v3, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    move-object/from16 v2, p2

    move/from16 v7, p12

    move-object/from16 v4, p13

    move-object/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/foxdebug/sdcard/WorkspaceIndex;->addEntry(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONArray;Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;Z)V

    if-eqz v21, :cond_6

    move-object/from16 v4, p3

    move-object v2, v9

    move-object/from16 v9, p8

    .line 715
    invoke-direct {v1, v4, v14, v15, v9}, Lcom/foxdebug/sdcard/WorkspaceIndex;->shouldSkipDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v6, p14

    move-object v3, v2

    goto :goto_1

    :cond_5
    move-object/from16 v3, p2

    move-object v5, v0

    move-object/from16 v27, v2

    move-object v2, v8

    move-object/from16 v26, v10

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    .line 717
    :try_start_1
    invoke-direct/range {v1 .. v15}, Lcom/foxdebug/sdcard/WorkspaceIndex;->scanFileDir(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZLjava/lang/String;ZZLorg/json/JSONArray;Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v15

    move-object/from16 v11, p10

    move-object/from16 v4, v26

    move-object/from16 v3, v27

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v14, v6

    move-object v6, v15

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v26

    invoke-static {v4, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_6
    move-object/from16 v6, p14

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v13

    move-object/from16 v11, p10

    if-eqz p11, :cond_7

    .line 738
    invoke-direct {v1, v5, v11}, Lcom/foxdebug/sdcard/WorkspaceIndex;->indexFile(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 739
    iget v0, v6, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->indexed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->indexed:I

    :cond_7
    :goto_4
    add-int/lit8 v13, v18, 0x1

    move-object/from16 v8, p1

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v11, v16

    move/from16 v12, v17

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v3, v9

    move-object v4, v10

    .line 687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_5
    return-void
.end method

.method private scanSafDir(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZLjava/lang/String;ZZLorg/json/JSONArray;Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 762
    const-string v2, "WorkspaceIndex"

    .line 0
    const-string v3, "Skipping unreadable SAF directory "

    .line 762
    iget-boolean v0, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->cancelled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_e

    .line 764
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v4, p5

    .line 763
    invoke-static {v0, v4}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 768
    new-instance v15, Landroid/os/CancellationSignal;

    invoke-direct {v15}, Landroid/os/CancellationSignal;-><init>()V

    .line 769
    invoke-virtual {v8, v15}, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->setSignal(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    const/4 v5, 0x0

    .line 772
    :try_start_0
    iget-object v9, v1, Lcom/foxdebug/sdcard/WorkspaceIndex;->resolver:Landroid/content/ContentResolver;

    const/4 v0, 0x5

    new-array v11, v0, [Ljava/lang/String;

    const-string v0, "document_id"

    const/4 v6, 0x0

    aput-object v0, v11, v6

    const-string v0, "_display_name"

    const/4 v7, 0x1

    aput-object v0, v11, v7

    const-string v0, "mime_type"

    const/4 v12, 0x2

    aput-object v0, v11, v12

    const-string v0, "_size"

    const/4 v13, 0x3

    aput-object v0, v11, v13

    const-string v0, "last_modified"

    const/4 v14, 0x4

    aput-object v0, v11, v14

    move/from16 v16, v13

    const/4 v13, 0x0

    move/from16 v17, v14

    const/4 v14, 0x0

    move/from16 v18, v12

    const/4 v12, 0x0

    .line 773
    invoke-virtual/range {v9 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v9, v15

    if-nez v5, :cond_2

    if-eqz v5, :cond_1

    .line 852
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_1
    invoke-virtual {v8, v9, v4}, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->restoreSignal(Landroid/os/CancellationSignal;Landroid/os/CancellationSignal;)V

    return-void

    .line 793
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v0, :cond_9

    .line 794
    :try_start_2
    iget-boolean v0, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->cancelled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v0, :cond_4

    if-eqz v5, :cond_3

    .line 852
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_3
    invoke-virtual {v8, v9, v4}, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->restoreSignal(Landroid/os/CancellationSignal;Landroid/os/CancellationSignal;)V

    return-void

    .line 795
    :cond_4
    :try_start_3
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x2

    .line 797
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v13, v11}, Lcom/foxdebug/sdcard/WorkspaceIndex;->normalizeMime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v11, 0x3

    .line 798
    invoke-direct {v1, v5, v11}, Lcom/foxdebug/sdcard/WorkspaceIndex;->safeLong(Landroid/database/Cursor;I)J

    move-result-wide v17

    const/4 v12, 0x4

    .line 799
    invoke-direct {v1, v5, v12}, Lcom/foxdebug/sdcard/WorkspaceIndex;->safeLong(Landroid/database/Cursor;I)J

    move-result-wide v19
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez p10, :cond_5

    if-eqz v13, :cond_5

    .line 801
    :try_start_4
    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v14, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v11, p6

    move-object v3, v4

    move-object v4, v2

    move-object v2, v8

    goto/16 :goto_c

    .line 803
    :cond_5
    :try_start_5
    const-string v14, "vnd.android.document/directory"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 804
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v21, v2

    move-object/from16 v2, p3

    :try_start_6
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v6, "::"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v14, p7

    .line 805
    invoke-direct {v1, v14, v13}, Lcom/foxdebug/sdcard/WorkspaceIndex;->joinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v23, v9

    .line 806
    :try_start_7
    new-instance v9, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;

    move/from16 v25, v10

    move/from16 v24, v11

    move-object/from16 v14, v22

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move/from16 v22, v12

    move-object v12, v6

    invoke-direct/range {v9 .. v20}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V

    move-object v6, v3

    .line 818
    iget-object v3, v8, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v2, p2

    move-object/from16 v17, v5

    move-object v10, v6

    move/from16 v19, v7

    move-object v5, v9

    const/16 v18, 0x0

    move/from16 v7, p13

    move-object/from16 v6, p15

    move-object v9, v4

    move-object/from16 v4, p14

    :try_start_8
    invoke-direct/range {v1 .. v7}, Lcom/foxdebug/sdcard/WorkspaceIndex;->addEntry(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONArray;Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;Z)V

    if-eqz v16, :cond_7

    move-object/from16 v2, p4

    move-object v6, v10

    move-object/from16 v10, p9

    .line 820
    invoke-direct {v1, v2, v12, v14, v10}, Lcom/foxdebug/sdcard/WorkspaceIndex;->shouldSkipDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_6

    move-object v3, v6

    move-object v4, v9

    move-object/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v2, v21

    move-object/from16 v9, v23

    goto/16 :goto_0

    :cond_6
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v11, p10

    move/from16 v13, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object v5, v2

    move-object/from16 v28, v6

    move-object v2, v8

    move-object/from16 v27, v9

    move-object v7, v12

    move-object v8, v14

    move-object/from16 v29, v21

    move-object/from16 v26, v23

    move-object/from16 v9, p8

    move-object/from16 v12, p11

    move/from16 v14, p13

    move-object v6, v0

    .line 822
    :try_start_9
    invoke-direct/range {v1 .. v16}, Lcom/foxdebug/sdcard/WorkspaceIndex;->scanSafDir(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZLjava/lang/String;ZZLorg/json/JSONArray;Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v6, v16

    move-object/from16 v12, p11

    move-object/from16 v10, v28

    move-object/from16 v4, v29

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v12, v7

    move-object/from16 v6, v16

    .line 840
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v28

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v4, v29

    :try_start_b
    invoke-static {v4, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v4, v29

    goto :goto_4

    :cond_7
    move-object/from16 v6, p15

    move-object v2, v8

    move-object/from16 v27, v9

    move-object/from16 v4, v21

    move-object/from16 v26, v23

    if-eqz p12, :cond_8

    move-object/from16 v12, p11

    .line 844
    invoke-direct {v1, v5, v12}, Lcom/foxdebug/sdcard/WorkspaceIndex;->indexFile(Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 845
    iget v0, v6, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->indexed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->indexed:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_8
    :goto_1
    move-object/from16 v12, p11

    :goto_2
    move-object v8, v2

    move-object v2, v4

    move-object v3, v10

    move-object/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v9, v26

    move-object/from16 v4, v27

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v8

    move-object/from16 v27, v9

    move-object/from16 v26, v23

    :goto_3
    move-object/from16 v5, v17

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v8

    move-object/from16 v27, v9

    move-object/from16 v4, v21

    move-object/from16 v26, v23

    :goto_4
    move-object/from16 v11, p6

    move-object/from16 v5, v17

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v17, v5

    move-object v2, v8

    move-object/from16 v26, v23

    :goto_5
    move-object/from16 v9, v26

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v17, v5

    move-object v2, v8

    move-object/from16 v4, v21

    move-object/from16 v26, v23

    move-object/from16 v11, p6

    :goto_6
    move-object/from16 v9, v26

    goto :goto_9

    :catch_6
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v17, v5

    move-object v2, v8

    move-object/from16 v26, v9

    move-object/from16 v4, v21

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v17, v5

    move-object v2, v8

    move-object/from16 v26, v9

    :goto_7
    move-object/from16 v3, v27

    goto/16 :goto_f

    :catch_7
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v17, v5

    move-object/from16 v26, v9

    move-object v4, v2

    move-object v2, v8

    :goto_8
    move-object/from16 v11, p6

    :goto_9
    move-object/from16 v3, v27

    goto :goto_c

    :cond_9
    move-object/from16 v27, v4

    move-object/from16 v17, v5

    move-object v2, v8

    move-object/from16 v26, v9

    if-eqz v17, :cond_a

    .line 852
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object/from16 v9, v26

    move-object/from16 v3, v27

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object v3, v4

    move-object/from16 v17, v5

    :goto_a
    move-object v2, v8

    goto :goto_f

    :catch_8
    move-exception v0

    move-object v3, v4

    move-object/from16 v17, v5

    move-object v4, v2

    move-object v2, v8

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v3, v4

    move-object v2, v8

    move-object v9, v15

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v10, v3

    move-object v3, v4

    move-object v9, v15

    move-object v4, v2

    move-object v2, v8

    .line 788
    :try_start_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-object/from16 v11, p6

    :try_start_d
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 853
    invoke-virtual {v2, v9, v3}, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->restoreSignal(Landroid/os/CancellationSignal;Landroid/os/CancellationSignal;)V

    return-void

    :catch_a
    move-exception v0

    goto :goto_c

    :catchall_7
    move-exception v0

    goto :goto_f

    :catch_b
    move-exception v0

    :goto_b
    move-object/from16 v11, p6

    .line 850
    :goto_c
    :try_start_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping unreadable SAF directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v5, :cond_b

    .line 852
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_b
    :goto_d
    invoke-virtual {v2, v9, v3}, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->restoreSignal(Landroid/os/CancellationSignal;Landroid/os/CancellationSignal;)V

    :goto_e
    return-void

    :goto_f
    if-eqz v5, :cond_c

    .line 852
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_c
    invoke-virtual {v2, v9, v3}, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->restoreSignal(Landroid/os/CancellationSignal;Landroid/os/CancellationSignal;)V

    .line 854
    throw v0
.end method

.method private searchInContent(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/json/JSONObject;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1071
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1072
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1073
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v7, 0x1e

    if-le v6, v7, :cond_0

    .line 1075
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "..."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1082
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1083
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/16 v11, 0x1388

    const/4 v12, 0x1

    if-lt v10, v11, :cond_1

    move v6, v12

    goto/16 :goto_5

    .line 1087
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    .line 1088
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    .line 1089
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    .line 1090
    invoke-direct {v0, v2, v10, v11, v13}, Lcom/foxdebug/sdcard/WorkspaceIndex;->getSurrounding(Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v14

    :goto_1
    const/16 v15, 0xa

    if-ge v7, v11, :cond_3

    const/16 p3, 0x0

    .line 1092
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v15, :cond_2

    add-int/lit8 v8, v8, 0x1

    move/from16 v9, p3

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/16 p3, 0x0

    .line 1100
    invoke-direct {v0, v8, v9}, Lcom/foxdebug/sdcard/WorkspaceIndex;->lineColumn(II)Lorg/json/JSONObject;

    move-result-object v6

    :goto_3
    if-ge v7, v13, :cond_5

    .line 1102
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v15, :cond_4

    add-int/lit8 v8, v8, 0x1

    move/from16 v9, p3

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1110
    :cond_5
    invoke-direct {v0, v8, v9}, Lcom/foxdebug/sdcard/WorkspaceIndex;->lineColumn(II)Lorg/json/JSONObject;

    move-result-object v11

    .line 1111
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 1112
    const-string v15, "match"

    invoke-virtual {v13, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1113
    const-string v10, "renderText"

    aget-object v12, v14, v12

    invoke-virtual {v13, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1114
    aget-object v10, v14, p3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v12, "line"

    invoke-virtual {v13, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1115
    const-string v10, "position"

    invoke-direct {v0, v6, v11}, Lcom/foxdebug/sdcard/WorkspaceIndex;->position(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v13, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1116
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1117
    const-string v6, "\n\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v10, v14, p3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    const/16 p3, 0x0

    move/from16 v6, p3

    .line 1120
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_7

    const/4 v1, 0x0

    return-object v1

    .line 1122
    :cond_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1123
    const-string v3, "file"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1124
    const-string v1, "matches"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_8

    .line 1126
    const-string v1, "\n\t... result limit reached for this file"

    .line 1127
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    :cond_8
    const-string v1, "limited"

    invoke-virtual {v2, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1131
    const-string v1, "text"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2
.end method

.method private send(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V
    .locals 2

    .line 1663
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 1664
    invoke-virtual {v0, p3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 1665
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method private sendError(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1670
    const-string v0, "error"

    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->baseEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 1671
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 1672
    invoke-direct {p0, p1, p2, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->send(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1674
    :catch_0
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private sendProgress(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1649
    const-string v0, "progress"

    invoke-direct {p0, p2, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->baseEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 1650
    const-string v0, "data"

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 p3, 0x1

    .line 1651
    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/sdcard/WorkspaceIndex;->send(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private sendStatus(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1640
    const-string v0, "status"

    invoke-direct {p0, p2, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->baseEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 1641
    const-string v0, "state"

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1642
    const-string p3, "message"

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1643
    const-string p3, "progress"

    invoke-virtual {p2, p3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1644
    invoke-direct {p0, p1, p2, p6}, Lcom/foxdebug/sdcard/WorkspaceIndex;->send(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private shouldSkipDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 2

    .line 1391
    invoke-direct {p0, p3, p4}, Lcom/foxdebug/sdcard/WorkspaceIndex;->isExcluded(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p4}, Lcom/foxdebug/sdcard/WorkspaceIndex;->isExcluded(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1395
    const-string p3, "content://com.termux.documents/tree/"

    .line 1397
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string p1, ".*::/data/data/com\\.termux/files/home/storage(?:/)?$"

    .line 1399
    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private shouldSkipSearchFile(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 5

    .line 1404
    invoke-static {p1}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->fromJSON(Lorg/json/JSONObject;)Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/foxdebug/sdcard/WorkspaceIndex$FileEntry;->isBinary()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1405
    :cond_0
    const-string v0, "path"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    return v3

    .line 1408
    :cond_1
    const-string v0, "exclude"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->splitPatterns(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1409
    const-string v4, "include"

    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->splitPatterns(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 1410
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "**"

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1412
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/foxdebug/sdcard/WorkspaceIndex;->matchesAny(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->matchesAny(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    return v1
.end method

.method private splitPatterns(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5

    .line 1423
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_2

    .line 1424
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1425
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1426
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 1427
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1428
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method cancel(Ljava/lang/String;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->jobs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->cancel()V

    :cond_0
    return-void
.end method

.method clear(Lorg/json/JSONArray;)V
    .locals 11

    .line 290
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    invoke-virtual {v0}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 291
    const-string v1, "workspaces"

    const-string v2, "files"

    const-string v3, "content"

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    move v6, v5

    .line 298
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 299
    invoke-virtual {p1, v6, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 300
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    .line 301
    new-array v9, v8, [Ljava/lang/String;

    aput-object v7, v9, v5

    const-string v10, "url IN (SELECT url FROM files WHERE root_url = ?)"

    invoke-virtual {v0, v3, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    new-array v9, v8, [Ljava/lang/String;

    aput-object v7, v9, v5

    const-string v10, "root_url = ?"

    invoke-virtual {v0, v2, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 303
    new-array v8, v8, [Ljava/lang/String;

    aput-object v7, v8, v5

    invoke-virtual {v0, v1, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 292
    :cond_4
    :goto_2
    invoke-virtual {v0, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 293
    invoke-virtual {v0, v2, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 294
    invoke-virtual {v0, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$query$3$com-foxdebug-sdcard-WorkspaceIndex(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
    .locals 1

    .line 267
    :try_start_0
    invoke-direct {p0, p2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->runQuery(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 269
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$scan$0$com-foxdebug-sdcard-WorkspaceIndex(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 0

    .line 223
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/sdcard/WorkspaceIndex;->runScan(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->jobs:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    :try_start_1
    invoke-direct {p0, p3, p4, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->sendError(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    iget-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->jobs:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    iget-object p2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->jobs:Ljava/util/Map;

    invoke-interface {p2, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    throw p1
.end method

.method synthetic lambda$search$2$com-foxdebug-sdcard-WorkspaceIndex(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 0

    .line 253
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/sdcard/WorkspaceIndex;->runSearch(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    iget-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->jobs:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    :try_start_1
    invoke-direct {p0, p3, p4, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex;->sendError(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    iget-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->jobs:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    iget-object p2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->jobs:Ljava/util/Map;

    invoke-interface {p2, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    throw p1
.end method

.method synthetic lambda$update$1$com-foxdebug-sdcard-WorkspaceIndex(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
    .locals 1

    .line 237
    :try_start_0
    invoke-direct {p0, p2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->runUpdate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 239
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method markDirty(Lorg/json/JSONArray;)V
    .locals 6

    .line 281
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->db:Lcom/foxdebug/sdcard/WorkspaceIndex$DB;

    invoke-virtual {v0}, Lcom/foxdebug/sdcard/WorkspaceIndex$DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 282
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 283
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 284
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    .line 285
    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v1

    const-string v3, "content"

    const-string v5, "url = ?"

    invoke-virtual {v0, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method query(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda3;-><init>(Lcom/foxdebug/sdcard/WorkspaceIndex;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method scan(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 8

    .line 216
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 217
    new-instance v4, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;

    invoke-direct {v4, v7}, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;-><init>(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->jobs:Ljava/util/Map;

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->indexExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda1;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda1;-><init>(Lcom/foxdebug/sdcard/WorkspaceIndex;Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method search(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 8

    .line 246
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 247
    new-instance v4, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;

    invoke-direct {v4, v7}, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;-><init>(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->jobs:Ljava/util/Map;

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;-><init>(Lcom/foxdebug/sdcard/WorkspaceIndex;Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method update(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex;->indexExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda0;-><init>(Lcom/foxdebug/sdcard/WorkspaceIndex;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
