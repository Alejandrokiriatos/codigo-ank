.class public final Landroidx/security/crypto/MasterKey$Builder;
.super Ljava/lang/Object;
.source "MasterKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/MasterKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/crypto/MasterKey$Builder$Api23Impl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mAuthenticationRequired:Z

.field final mContext:Landroid/content/Context;

.field final mKeyAlias:Ljava/lang/String;

.field mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field mKeyScheme:Landroidx/security/crypto/MasterKey$KeyScheme;

.field mRequestStrongBoxBacked:Z

.field mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 195
    const-string v0, "_androidx_security_master_key_"

    invoke-direct {p0, p1, v0}, Landroidx/security/crypto/MasterKey$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/security/crypto/MasterKey$Builder;->mContext:Landroid/content/Context;

    .line 205
    iput-object p2, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroidx/security/crypto/MasterKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-static {p0}, Landroidx/security/crypto/MasterKey$Builder$Api23Impl;->build(Landroidx/security/crypto/MasterKey$Builder;)Landroidx/security/crypto/MasterKey;

    move-result-object v0

    return-object v0
.end method

.method public setKeyGenParameterSpec(Landroid/security/keystore/KeyGenParameterSpec;)Landroidx/security/crypto/MasterKey$Builder;
    .locals 3

    .line 298
    iget-object v0, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyScheme:Landroidx/security/crypto/MasterKey$KeyScheme;

    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyAlias:Ljava/lang/String;

    invoke-static {p1}, Landroidx/security/crypto/MasterKey$Builder$Api23Impl;->getKeystoreAlias(Landroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iput-object p1, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-object p0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeyGenParamSpec\'s key alias does not match provided alias ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    invoke-static {p1}, Landroidx/security/crypto/MasterKey$Builder$Api23Impl;->getKeystoreAlias(Landroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KeyGenParamSpec set after setting a KeyScheme"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyScheme(Landroidx/security/crypto/MasterKey$KeyScheme;)Landroidx/security/crypto/MasterKey$Builder;
    .locals 3

    .line 220
    invoke-virtual {p1}, Landroidx/security/crypto/MasterKey$KeyScheme;->ordinal()I

    move-result v0

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-nez v0, :cond_0

    .line 232
    iput-object p1, p0, Landroidx/security/crypto/MasterKey$Builder;->mKeyScheme:Landroidx/security/crypto/MasterKey$KeyScheme;

    return-object p0

    .line 224
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KeyScheme set after setting a KeyGenParamSpec"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported scheme: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestStrongBoxBacked(Z)Landroidx/security/crypto/MasterKey$Builder;
    .locals 0

    .line 282
    iput-boolean p1, p0, Landroidx/security/crypto/MasterKey$Builder;->mRequestStrongBoxBacked:Z

    return-object p0
.end method

.method public setUserAuthenticationRequired(Z)Landroidx/security/crypto/MasterKey$Builder;
    .locals 1

    .line 250
    invoke-static {}, Landroidx/security/crypto/MasterKey;->getDefaultAuthenticationValidityDurationSeconds()I

    move-result v0

    .line 249
    invoke-virtual {p0, p1, v0}, Landroidx/security/crypto/MasterKey$Builder;->setUserAuthenticationRequired(ZI)Landroidx/security/crypto/MasterKey$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUserAuthenticationRequired(ZI)Landroidx/security/crypto/MasterKey$Builder;
    .locals 0

    .line 268
    iput-boolean p1, p0, Landroidx/security/crypto/MasterKey$Builder;->mAuthenticationRequired:Z

    .line 269
    iput p2, p0, Landroidx/security/crypto/MasterKey$Builder;->mUserAuthenticationValidityDurationSeconds:I

    return-object p0
.end method
