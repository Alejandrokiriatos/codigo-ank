.class public Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20Poly1305Factory;
.super Ljava/lang/Object;
.source "ChaCha20Poly1305.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshCipherFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChaCha20Poly1305Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/ssh/components/SshCipherFactory<",
        "Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
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

    .line 46
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20Poly1305Factory;->create()Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;-><init>()V

    return-object v0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "chacha20-poly1305@openssh.com"

    aput-object v2, v0, v1

    return-object v0
.end method
