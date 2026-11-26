.class Landroidx/security/crypto/MasterKey$Api28Impl;
.super Ljava/lang/Object;
.source "MasterKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/MasterKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isStrongBoxBacked(Landroid/security/keystore/KeyGenParameterSpec;)Z
    .locals 0

    .line 431
    invoke-virtual {p0}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result p0

    return p0
.end method
