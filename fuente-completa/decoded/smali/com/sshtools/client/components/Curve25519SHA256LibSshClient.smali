.class public Lcom/sshtools/client/components/Curve25519SHA256LibSshClient;
.super Lcom/sshtools/client/components/Curve25519SHA256Client;
.source "Curve25519SHA256LibSshClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/components/Curve25519SHA256LibSshClient$Curve25519SHA256LibSshClientFactory;
    }
.end annotation


# static fields
.field public static final CURVE25519_SHA2_AT_LIBSSH_ORG:Ljava/lang/String; = "curve25519-sha256@libssh.org"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    const-string v0, "curve25519-sha256@libssh.org"

    invoke-direct {p0, v0}, Lcom/sshtools/client/components/Curve25519SHA256Client;-><init>(Ljava/lang/String;)V

    return-void
.end method
