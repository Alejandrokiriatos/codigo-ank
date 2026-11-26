.class public Lcom/sshtools/common/ssh/components/jce/HmacSha512ETM$HmacSha512ETMFactory;
.super Ljava/lang/Object;
.source "HmacSha512ETM.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshHmacFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/components/jce/HmacSha512ETM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSha512ETMFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/ssh/components/SshHmacFactory<",
        "Lcom/sshtools/common/ssh/components/jce/HmacSha512ETM;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/sshtools/common/ssh/components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/HmacSha512ETM$HmacSha512ETMFactory;->create()Lcom/sshtools/common/ssh/components/jce/HmacSha512ETM;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/sshtools/common/ssh/components/jce/HmacSha512ETM;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/HmacSha512ETM;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/HmacSha512ETM;-><init>()V

    return-object v0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 50
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hmac-sha2-512-etm@openssh.com"

    aput-object v2, v0, v1

    return-object v0
.end method
