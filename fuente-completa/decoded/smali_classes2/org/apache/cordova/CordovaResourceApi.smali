.class public Lorg/apache/cordova/CordovaResourceApi;
.super Ljava/lang/Object;
.source "CordovaResourceApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    }
.end annotation


# static fields
.field private static final LOCAL_FILE_PROJECTION:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "CordovaResourceApi"

.field public static final PLUGIN_URI_SCHEME:Ljava/lang/String; = "cdvplugin"

.field public static final URI_TYPE_ASSET:I = 0x1

.field public static final URI_TYPE_CONTENT:I = 0x2

.field public static final URI_TYPE_DATA:I = 0x4

.field public static final URI_TYPE_FILE:I = 0x0

.field public static final URI_TYPE_HTTP:I = 0x5

.field public static final URI_TYPE_HTTPS:I = 0x6

.field public static final URI_TYPE_PLUGIN:I = 0x7

.field public static final URI_TYPE_RESOURCE:I = 0x3

.field public static final URI_TYPE_UNKNOWN:I = -0x1

.field public static jsThread:Ljava/lang/Thread;


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final pluginManager:Lorg/apache/cordova/PluginManager;

.field private threadCheckingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 95
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/cordova/CordovaResourceApi;->LOCAL_FILE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/PluginManager;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lorg/apache/cordova/CordovaResourceApi;->threadCheckingEnabled:Z

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/CordovaResourceApi;->contentResolver:Landroid/content/ContentResolver;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/CordovaResourceApi;->assetManager:Landroid/content/res/AssetManager;

    .line 108
    iput-object p2, p0, Lorg/apache/cordova/CordovaResourceApi;->pluginManager:Lorg/apache/cordova/PluginManager;

    return-void
.end method

.method private assertBackgroundThread()V
    .locals 2

    .line 419
    iget-boolean v0, p0, Lorg/apache/cordova/CordovaResourceApi;->threadCheckingEnabled:Z

    if-eqz v0, :cond_2

    .line 420
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 421
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 424
    sget-object v1, Lorg/apache/cordova/CordovaResourceApi;->jsThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to perform an IO operation on the WebCore thread. Use CordovaInterface.getThreadPool() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not perform IO operations on the UI thread. Use CordovaInterface.getThreadPool() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private static assertNonRelative(Landroid/net/Uri;)V
    .locals 1

    .line 476
    invoke-virtual {p0}, Landroid/net/Uri;->isAbsolute()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 477
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Relative URIs are not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDataUriMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 431
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2c

    .line 432
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 436
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 437
    array-length v0, p1

    if-lez v0, :cond_1

    .line 438
    aget-object p1, p1, v1

    return-object p1

    :cond_1
    return-object v2
.end method

.method private getMimeTypeFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 228
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 229
    const-string v0, "3ga"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string p1, "audio/3gpp"

    return-object p1

    .line 231
    :cond_1
    const-string v0, "js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    const-string p1, "text/javascript"

    return-object p1

    .line 235
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getUriType(Landroid/net/Uri;)I
    .locals 2

    .line 121
    invoke-static {p0}, Lorg/apache/cordova/CordovaResourceApi;->assertNonRelative(Landroid/net/Uri;)V

    .line 122
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 126
    :cond_0
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x3

    return p0

    .line 129
    :cond_1
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 135
    :cond_3
    const-string p0, "data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 138
    :cond_4
    const-string p0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x5

    return p0

    .line 141
    :cond_5
    const-string p0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x6

    return p0

    .line 144
    :cond_6
    const-string p0, "cdvplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method private readDataUri(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .locals 12

    .line 444
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    .line 449
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 452
    array-length v5, v4

    if-lez v5, :cond_1

    .line 453
    aget-object v3, v4, v2

    :cond_1
    move-object v8, v3

    const/4 v3, 0x1

    move v6, v2

    move v5, v3

    .line 455
    :goto_0
    array-length v7, v4

    if-ge v5, v7, :cond_3

    .line 456
    const-string v7, "base64"

    aget-object v9, v4, v5

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v1, v3

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_4

    .line 463
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_1

    .line 466
    :cond_4
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 468
    :catch_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 471
    :goto_1
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 472
    new-instance v5, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    array-length v0, v0

    int-to-long v9, v0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;-><init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V

    return-object v5
.end method


# virtual methods
.method public copyResource(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0, p1}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/apache/cordova/CordovaResourceApi;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/CordovaResourceApi;->copyResource(Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;Ljava/io/OutputStream;)V

    return-void
.end method

.method public copyResource(Landroid/net/Uri;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    invoke-virtual {p0, p1}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/CordovaResourceApi;->copyResource(Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;Ljava/io/OutputStream;)V

    return-void
.end method

.method public copyResource(Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-direct {p0}, Lorg/apache/cordova/CordovaResourceApi;->assertBackgroundThread()V

    .line 375
    :try_start_0
    iget-object v0, p1, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    .line 376
    instance-of v1, v0, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    instance-of v1, p2, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 377
    iget-object v0, p1, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 378
    move-object v0, p2

    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 380
    iget-wide v5, p1, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    .line 381
    iget-object v0, p1, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->assetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p1, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->assetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 386
    :goto_0
    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x0

    .line 387
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_2

    :cond_1
    const/16 v1, 0x2000

    .line 390
    new-array v2, v1, [B

    :goto_1
    const/4 v3, 0x0

    .line 393
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v4, :cond_3

    .line 402
    :goto_2
    iget-object p1, p1, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-eqz p2, :cond_2

    .line 404
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_2
    return-void

    .line 398
    :cond_3
    :try_start_1
    invoke-virtual {p2, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 402
    iget-object p1, p1, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-eqz p2, :cond_4

    .line 404
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 406
    :cond_4
    throw v0
.end method

.method public createHttpConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Lorg/apache/cordova/CordovaResourceApi;->assertBackgroundThread()V

    .line 367
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 190
    invoke-static {p1}, Lorg/apache/cordova/CordovaResourceApi;->getUriType(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 205
    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 206
    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    .line 198
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaResourceApi;->getDataUriMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 196
    :pswitch_2
    iget-object v0, p0, Lorg/apache/cordova/CordovaResourceApi;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 193
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaResourceApi;->getMimeTypeFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isThreadCheckingEnabled()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/apache/cordova/CordovaResourceApi;->threadCheckingEnabled:Z

    return v0
.end method

.method public mapUriToFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 8

    .line 164
    invoke-direct {p0}, Lorg/apache/cordova/CordovaResourceApi;->assertBackgroundThread()V

    .line 165
    invoke-static {p1}, Lorg/apache/cordova/CordovaResourceApi;->getUriType(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/CordovaResourceApi;->contentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lorg/apache/cordova/CordovaResourceApi;->LOCAL_FILE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 172
    :try_start_0
    aget-object v0, v4, v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 173
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 174
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 175
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 182
    throw v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_3
    move-object v3, p1

    .line 167
    new-instance p1, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, p1, v0}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;Z)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object p1

    return-object p1
.end method

.method public openForRead(Landroid/net/Uri;Z)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 262
    invoke-direct {p0}, Lorg/apache/cordova/CordovaResourceApi;->assertBackgroundThread()V

    .line 264
    :cond_0
    invoke-static {p1}, Lorg/apache/cordova/CordovaResourceApi;->getUriType(Landroid/net/Uri;)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    move-object v4, p1

    goto/16 :goto_2

    .line 322
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    .line 323
    iget-object v0, p0, Lorg/apache/cordova/CordovaResourceApi;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0, p2}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 327
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CordovaPlugin;->handleOpenForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object p1

    return-object p1

    .line 325
    :cond_1
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid plugin ID in URI: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 305
    :pswitch_1
    new-instance p2, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    .line 306
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 307
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 308
    const-string v0, "Content-Type"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 310
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    :cond_2
    move-object v5, v0

    .line 312
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 314
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    move-object v4, v1

    .line 319
    new-instance v2, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    int-to-long v6, v0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;-><init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V

    return-object v2

    :pswitch_2
    move-object v4, p1

    .line 297
    invoke-direct {p0, v4}, Lorg/apache/cordova/CordovaResourceApi;->readDataUri(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :pswitch_3
    move-object v4, p1

    .line 290
    iget-object p1, p0, Lorg/apache/cordova/CordovaResourceApi;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 291
    iget-object p1, p0, Lorg/apache/cordova/CordovaResourceApi;->contentResolver:Landroid/content/ContentResolver;

    const-string p2, "r"

    invoke-virtual {p1, v4, p2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v9

    .line 292
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v5

    .line 293
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    .line 294
    new-instance v3, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    invoke-direct/range {v3 .. v9}, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;-><init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V

    return-object v3

    :pswitch_4
    move-object v4, p1

    .line 272
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 277
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaResourceApi;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2

    .line 278
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    .line 279
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 282
    :catch_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaResourceApi;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    :goto_1
    move-object v9, p2

    move-object v5, v0

    move-wide v7, v1

    .line 285
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaResourceApi;->getMimeTypeFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 286
    new-instance v3, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    invoke-direct/range {v3 .. v9}, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;-><init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V

    return-object v3

    :pswitch_5
    move-object v4, p1

    .line 266
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaResourceApi;->getMimeTypeFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 268
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    .line 269
    new-instance v3, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;-><init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V

    return-object v3

    .line 330
    :cond_4
    :goto_2
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "URI not supported by CordovaResourceApi: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, p1, v0}, Lorg/apache/cordova/CordovaResourceApi;->openOutputStream(Landroid/net/Uri;Z)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public openOutputStream(Landroid/net/Uri;Z)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Lorg/apache/cordova/CordovaResourceApi;->assertBackgroundThread()V

    .line 347
    invoke-static {p1}, Lorg/apache/cordova/CordovaResourceApi;->getUriType(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URI not supported by CordovaResourceApi: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 358
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaResourceApi;->contentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_2

    const-string p2, "wa"

    goto :goto_1

    :cond_2
    const-string p2, "w"

    :goto_1
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object p1

    return-object p1

    .line 349
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 352
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 354
    :cond_4
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object p1
.end method

.method public remapPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remapUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 151
    invoke-static {p1}, Lorg/apache/cordova/CordovaResourceApi;->assertNonRelative(Landroid/net/Uri;)V

    .line 152
    iget-object v0, p0, Lorg/apache/cordova/CordovaResourceApi;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/PluginManager;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public setThreadCheckingEnabled(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lorg/apache/cordova/CordovaResourceApi;->threadCheckingEnabled:Z

    return-void
.end method
