.class public Lcom/sshtools/common/auth/DefaultPublicKeyAuthenticationVerifier;
.super Ljava/lang/Object;
.source "DefaultPublicKeyAuthenticationVerifier.java"

# interfaces
.implements Lcom/sshtools/common/auth/PublicKeyAuthenticationVerifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verifySignature(Lcom/sshtools/common/ssh/components/SshPublicKey;[B[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 33
    invoke-interface {p1, p2, p3}, Lcom/sshtools/common/ssh/components/SshPublicKey;->verifySignature([B[B)Z

    move-result p1

    return p1
.end method
