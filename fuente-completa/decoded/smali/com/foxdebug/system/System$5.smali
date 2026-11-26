.class Lcom/foxdebug/system/System$5;
.super Ljava/lang/Object;
.source "System.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/system/System;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/system/System;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$arg1:Ljava/lang/String;

.field final synthetic val$arg2:Ljava/lang/String;

.field final synthetic val$arg3:Ljava/lang/String;

.field final synthetic val$arg4:Ljava/lang/String;

.field final synthetic val$arg5:Ljava/lang/String;

.field final synthetic val$arg6:Ljava/lang/String;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 356
    iput-object p1, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iput-object p2, p0, Lcom/foxdebug/system/System$5;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/system/System$5;->val$args:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p5, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iput-object p6, p0, Lcom/foxdebug/system/System$5;->val$arg2:Ljava/lang/String;

    iput-object p7, p0, Lcom/foxdebug/system/System$5;->val$arg3:Ljava/lang/String;

    iput-object p8, p0, Lcom/foxdebug/system/System$5;->val$arg4:Ljava/lang/String;

    iput-object p9, p0, Lcom/foxdebug/system/System$5;->val$arg5:Ljava/lang/String;

    iput-object p10, p0, Lcom/foxdebug/system/System$5;->val$arg6:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 6

    .line 568
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    .line 571
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 570
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    .line 577
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 579
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 586
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 358
    const-string v0, "file"

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$action:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "pin-file-shortcut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x17

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "add-shortcut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "compare-texts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0x15

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "request-permissions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0x14

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "pin-shortcut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0x13

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "copyToUri"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0x12

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "compare-file-text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0x11

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "get-android-version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v6, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "checksumText"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0xf

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "extractAsset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v6, 0xe

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "launch-app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v6, 0xd

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "get-available-encodings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "file-action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "remove-shortcut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "getInstaller"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "get-webkit-info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "get-app-info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_11
    const-string v2, "request-permission"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_12
    const-string v2, "encode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_13
    const-string v2, "decode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_14
    const-string v2, "has-permission"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_15
    const-string v2, "get-global-setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_0

    :cond_15
    move v6, v3

    goto :goto_0

    :sswitch_16
    const-string v2, "is-powersave-mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_0

    :cond_16
    move v6, v4

    goto :goto_0

    :sswitch_17
    const-string v2, "open-in-browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_0

    :cond_17
    move v6, v5

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_14

    .line 518
    :pswitch_0
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lcom/foxdebug/system/System;->-$$Nest$mpinFileShortcut(Lcom/foxdebug/system/System;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 521
    :pswitch_1
    iget-object v3, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v4, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v5, p0, Lcom/foxdebug/system/System$5;->val$arg2:Ljava/lang/String;

    iget-object v6, p0, Lcom/foxdebug/system/System$5;->val$arg3:Ljava/lang/String;

    iget-object v7, p0, Lcom/foxdebug/system/System$5;->val$arg4:Ljava/lang/String;

    iget-object v8, p0, Lcom/foxdebug/system/System$5;->val$arg5:Ljava/lang/String;

    iget-object v9, p0, Lcom/foxdebug/system/System$5;->val$arg6:Ljava/lang/String;

    iget-object v10, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static/range {v3 .. v10}, Lcom/foxdebug/system/System;->-$$Nest$maddShortcut(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 563
    :pswitch_2
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$arg2:Ljava/lang/String;

    iget-object v3, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2, v3}, Lcom/foxdebug/system/System;->-$$Nest$mcompareTexts(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 533
    :pswitch_3
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lcom/foxdebug/system/System;->-$$Nest$mrequestPermissions(Lcom/foxdebug/system/System;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 527
    :pswitch_4
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lcom/foxdebug/system/System;->-$$Nest$mpinShortcut(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 396
    :pswitch_5
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 402
    iget-object v4, p0, Lcom/foxdebug/system/System$5;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    const/4 v4, 0x0

    .line 408
    :try_start_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 409
    new-instance v6, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_1

    .line 412
    :cond_18
    iget-object v6, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    invoke-static {v6}, Lcom/foxdebug/system/System;->-$$Nest$fgetcontext(Lcom/foxdebug/system/System;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 418
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 420
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    .line 422
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 424
    :cond_19
    invoke-static {v0}, Landroidx/documentfile/provider/DocumentFile;->fromFile(Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v3}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 428
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 429
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    .line 433
    :cond_1a
    iget-object v2, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    invoke-static {v2, v3}, Lcom/foxdebug/system/System;->-$$Nest$mgetMimeTypeFromExtension(Lcom/foxdebug/system/System;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-virtual {v0, v2, v3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    goto :goto_2

    .line 437
    :cond_1b
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    invoke-static {v0}, Lcom/foxdebug/system/System;->-$$Nest$fgetcontext(Lcom/foxdebug/system/System;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 444
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 445
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_b

    .line 454
    :cond_1c
    invoke-virtual {v0, v3}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 455
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 456
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    .line 460
    :cond_1d
    iget-object v2, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    invoke-static {v2, v3}, Lcom/foxdebug/system/System;->-$$Nest$mgetMimeTypeFromExtension(Lcom/foxdebug/system/System;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-virtual {v0, v2, v3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_24

    .line 464
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_a

    .line 470
    :cond_1e
    iget-object v2, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    invoke-static {v2}, Lcom/foxdebug/system/System;->-$$Nest$fgetcontext(Lcom/foxdebug/system/System;)Landroid/content/Context;

    move-result-object v2

    .line 471
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 472
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    if-eqz v1, :cond_22

    if-nez v4, :cond_1f

    goto :goto_7

    :cond_1f
    const/16 v0, 0x2000

    .line 480
    new-array v0, v0, [B

    .line 482
    :goto_3
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_20

    .line 483
    invoke-virtual {v4, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    .line 486
    :cond_20
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 487
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_21

    .line 493
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_21
    :goto_4
    if-eqz v4, :cond_2a

    .line 494
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    goto/16 :goto_14

    .line 496
    :goto_5
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 497
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_14

    .line 475
    :cond_22
    :goto_7
    :try_start_5
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v2, "uri streams are null"

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_23

    .line 493
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_9

    :cond_23
    :goto_8
    if-eqz v4, :cond_2a

    .line 494
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    return-void

    .line 496
    :goto_9
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 497
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_6

    .line 465
    :cond_24
    :goto_a
    :try_start_8
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v2, "Failed to create destination file"

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_2a

    .line 493
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    return-void

    :catch_2
    move-exception v0

    .line 496
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 497
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_6

    .line 447
    :cond_25
    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v2, "Destination directory does not exist or is not accessible"

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v1, :cond_2a

    .line 493
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    return-void

    :catch_3
    move-exception v0

    .line 496
    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 497
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v4

    move-object v4, v11

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v11, v4

    move-object v4, v1

    move-object v1, v11

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v4

    goto :goto_f

    :catch_5
    move-exception v0

    move-object v1, v4

    .line 489
    :goto_c
    :try_start_e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 490
    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v4, :cond_26

    .line 493
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_e

    :cond_26
    :goto_d
    if-eqz v1, :cond_2a

    .line 494
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_14

    .line 496
    :goto_e
    :try_start_10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 497
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_f
    if-eqz v4, :cond_27

    .line 493
    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_10

    :catch_7
    move-exception v0

    goto :goto_11

    :cond_27
    :goto_10
    if-eqz v0, :cond_28

    .line 494
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_12

    .line 496
    :goto_11
    :try_start_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 497
    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 499
    :cond_28
    :goto_12
    throw v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    :catch_8
    move-exception v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 502
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 560
    :pswitch_6
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$arg2:Ljava/lang/String;

    iget-object v3, p0, Lcom/foxdebug/system/System$5;->val$arg3:Ljava/lang/String;

    iget-object v4, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/foxdebug/system/System;->-$$Nest$mcompareFileText(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 530
    :pswitch_7
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lcom/foxdebug/system/System;->-$$Nest$mgetAndroidVersion(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 566
    :pswitch_8
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v0, v0, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$args:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Lcom/foxdebug/system/System$5$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/foxdebug/system/System$5$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 361
    :pswitch_9
    :try_start_13
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v3, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v2, v0, v1, v3}, Lcom/foxdebug/system/System;->-$$Nest$mextractAsset(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    return-void

    :catch_9
    move-exception v0

    .line 365
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to extract asset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_14

    .line 545
    :pswitch_a
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$arg2:Ljava/lang/String;

    iget-object v4, p0, Lcom/foxdebug/system/System$5;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/foxdebug/system/System;->-$$Nest$mlaunchApp(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 551
    :pswitch_b
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lcom/foxdebug/system/System;->-$$Nest$mgetAvailableEncodings(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 509
    :pswitch_c
    iget-object v2, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v3, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v4, p0, Lcom/foxdebug/system/System$5;->val$arg2:Ljava/lang/String;

    iget-object v5, p0, Lcom/foxdebug/system/System$5;->val$arg3:Ljava/lang/String;

    iget-object v6, p0, Lcom/foxdebug/system/System$5;->val$arg4:Ljava/lang/String;

    iget-object v7, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static/range {v2 .. v7}, Lcom/foxdebug/system/System;->-$$Nest$mfileAction(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 524
    :pswitch_d
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lcom/foxdebug/system/System;->-$$Nest$mremoveShortcut(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 372
    :pswitch_e
    :try_start_14
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    invoke-static {v0}, Lcom/foxdebug/system/System;->-$$Nest$fgetcontext(Lcom/foxdebug/system/System;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 376
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_29

    .line 377
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    invoke-static {v1}, Lcom/foxdebug/system/System;->-$$Nest$fgetcontext(Lcom/foxdebug/system/System;)Landroid/content/Context;

    move-result-object v1

    .line 378
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 383
    :cond_29
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    invoke-static {v1}, Lcom/foxdebug/system/System;->-$$Nest$fgetcontext(Lcom/foxdebug/system/System;)Landroid/content/Context;

    move-result-object v1

    .line 384
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    :goto_13
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    return-void

    :catch_a
    move-exception v0

    .line 390
    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :cond_2a
    :goto_14
    return-void

    .line 506
    :pswitch_f
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lcom/foxdebug/system/System;->-$$Nest$mgetWebkitInfo(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 515
    :pswitch_10
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lcom/foxdebug/system/System;->-$$Nest$mgetAppInfo(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 536
    :pswitch_11
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lcom/foxdebug/system/System;->-$$Nest$mrequestPermission(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 557
    :pswitch_12
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$arg2:Ljava/lang/String;

    iget-object v3, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2, v3}, Lcom/foxdebug/system/System;->-$$Nest$mencode(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 554
    :pswitch_13
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$arg2:Ljava/lang/String;

    iget-object v3, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2, v3}, Lcom/foxdebug/system/System;->-$$Nest$mdecode(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 539
    :pswitch_14
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lcom/foxdebug/system/System;->-$$Nest$mhasPermission(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 548
    :pswitch_15
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lcom/foxdebug/system/System;->-$$Nest$mgetGlobalSetting(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 512
    :pswitch_16
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lcom/foxdebug/system/System;->-$$Nest$misPowerSaveMode(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 542
    :pswitch_17
    iget-object v0, p0, Lcom/foxdebug/system/System$5;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$5;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lcom/foxdebug/system/System;->-$$Nest$mopenInBrowser(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x717f861d -> :sswitch_17
        -0x6baacc6f -> :sswitch_16
        -0x69e29683 -> :sswitch_15
        -0x5c1a251e -> :sswitch_14
        -0x4f9d6e12 -> :sswitch_13
        -0x4d69c1ea -> :sswitch_12
        -0x3625a033 -> :sswitch_11
        -0x2526f28f -> :sswitch_10
        -0xef9bb5e -> :sswitch_f
        0x128a8d2 -> :sswitch_e
        0x207bb6f -> :sswitch_d
        0x59c0fa7 -> :sswitch_c
        0xb35fa85 -> :sswitch_b
        0x20800107 -> :sswitch_a
        0x2721c6ef -> :sswitch_9
        0x2a653c10 -> :sswitch_8
        0x36007b03 -> :sswitch_7
        0x3e1383f6 -> :sswitch_6
        0x59212a7c -> :sswitch_5
        0x62b1a57e -> :sswitch_4
        0x71719a46 -> :sswitch_3
        0x7a99b1fe -> :sswitch_2
        0x7bf30bf2 -> :sswitch_1
        0x7c8d0f3f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
