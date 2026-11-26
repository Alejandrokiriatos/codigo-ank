.class public Lcom/sshtools/common/zlib/OpenSSHZLibCompression;
.super Lcom/sshtools/common/zlib/ZLibCompression;
.source "OpenSSHZLibCompression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/zlib/OpenSSHZLibCompression$OpenSSHZLibCompressionFactory;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "zlib@openssh.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/sshtools/common/zlib/ZLibCompression;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "zlib@openssh.com"

    return-object v0
.end method
