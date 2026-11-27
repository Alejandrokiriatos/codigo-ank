.class public final Lcom/foxdebug/system/ApiVault;
.super Ljava/lang/Object;
.source "ApiVault.java"


# static methods
.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 6

    new-instance v0, Landroidx/security/crypto/MasterKey$Builder;

    const-string v1, "ank_api_master_key_v1"

    invoke-direct {v0, p0, v1}, Landroidx/security/crypto/MasterKey$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Landroidx/security/crypto/MasterKey$KeyScheme;->AES256_GCM:Landroidx/security/crypto/MasterKey$KeyScheme;

    invoke-virtual {v0, v1}, Landroidx/security/crypto/MasterKey$Builder;->setKeyScheme(Landroidx/security/crypto/MasterKey$KeyScheme;)Landroidx/security/crypto/MasterKey$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/security/crypto/MasterKey$Builder;->build()Landroidx/security/crypto/MasterKey;

    move-result-object v2

    const-string v3, "ank_api_secrets"

    sget-object v4, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    sget-object v5, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    invoke-static {p0, v3, v2, v4, v5}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Landroid/content/Context;Ljava/lang/String;Landroidx/security/crypto/MasterKey;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/foxdebug/system/ApiVault;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/foxdebug/system/ApiVault;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/foxdebug/system/ApiVault;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


.method public static execute(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4

    const-string v0, "secureGet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_secure_put

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    :try_start_secure_get
    invoke-static {p0, v1}, Lcom/foxdebug/system/ApiVault;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_secure_get
    .catch Ljava/lang/Exception; {:try_start_secure_get .. :try_end_secure_get} :catch_secure_get

    const/4 v0, 0x1

    return v0

    :catch_secure_get
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_secure_put
    const-string v0, "securePut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_secure_remove

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :try_start_secure_put
    invoke-static {p0, v1, v2}, Lcom/foxdebug/system/ApiVault;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_secure_put
    .catch Ljava/lang/Exception; {:try_start_secure_put .. :try_end_secure_put} :catch_secure_put

    const/4 v0, 0x1

    return v0

    :catch_secure_put
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_secure_remove
    const-string v0, "secureRemove"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_secure_unknown

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    :try_start_secure_remove
    invoke-static {p0, v1}, Lcom/foxdebug/system/ApiVault;->remove(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_secure_remove
    .catch Ljava/lang/Exception; {:try_start_secure_remove .. :try_end_secure_remove} :catch_secure_remove

    const/4 v0, 0x1

    return v0

    :catch_secure_remove
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_secure_unknown
    const/4 v0, 0x0

    return v0
.end method
