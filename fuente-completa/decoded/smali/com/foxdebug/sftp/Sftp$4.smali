.class Lcom/foxdebug/sftp/Sftp$4;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->editProfile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sftp/Sftp;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 746
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$4;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$4;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$4;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 749
    const-string v0, "key"

    const-string v1, "authType"

    const-string v2, "password"

    :try_start_0
    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$4;->val$args:Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$smnullableProfileID(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 752
    :cond_0
    iget-object v4, p0, Lcom/foxdebug/sftp/Sftp$4;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v4}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsecurityStore(Lcom/foxdebug/sftp/Sftp;)Lcom/foxdebug/sftp/SftpSecurityStore;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/foxdebug/sftp/SftpSecurityStore;->getProfile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 753
    :goto_0
    iget-object v5, p0, Lcom/foxdebug/sftp/Sftp$4;->val$args:Lorg/json/JSONArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 754
    iget-object v7, p0, Lcom/foxdebug/sftp/Sftp$4;->val$args:Lorg/json/JSONArray;

    const/16 v8, 0x16

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONArray;->optInt(II)I

    move-result v7

    .line 755
    iget-object v8, p0, Lcom/foxdebug/sftp/Sftp$4;->val$args:Lorg/json/JSONArray;

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 756
    iget-object v10, p0, Lcom/foxdebug/sftp/Sftp$4;->val$args:Lorg/json/JSONArray;

    const/4 v11, 0x4

    invoke-virtual {v10, v11, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 757
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 760
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    if-lt v7, v6, :cond_5

    const v6, 0xffff

    if-gt v7, v6, :cond_5

    .line 769
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 770
    const-string v11, "hostname"

    invoke-virtual {v6, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 771
    const-string v5, "port"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 772
    const-string v5, "username"

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 773
    invoke-virtual {v6, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 775
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$4;->val$args:Lorg/json/JSONArray;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 776
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "passphrase"

    const-string v8, "privateKey"

    if-nez v5, :cond_1

    .line 777
    :try_start_1
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$4;->this$0:Lcom/foxdebug/sftp/Sftp;

    .line 779
    invoke-static {v0, v2}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$mreadUri(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 781
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$4;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 784
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 786
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 787
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 789
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Select a private key file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_3
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$4;->val$args:Lorg/json/JSONArray;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 798
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 800
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    :cond_4
    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    :goto_1
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$4;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v0}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsecurityStore(Lcom/foxdebug/sftp/Sftp;)Lcom/foxdebug/sftp/SftpSecurityStore;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Lcom/foxdebug/sftp/SftpSecurityStore;->saveProfile(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 809
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$4;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v6}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$smprofileInfo(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void

    .line 764
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Port must be between 1 and 65535"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hostname is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 811
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$4;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not securely save SFTP profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$4;->this$0:Lcom/foxdebug/sftp/Sftp;

    .line 812
    invoke-virtual {v3, v0}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 811
    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 814
    const-string v1, "SFTP"

    const-string v2, "Could not save SFTP profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
