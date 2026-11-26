.class public Lcom/sshtools/client/components/DiffieHellmanEcdhNistp384;
.super Lcom/sshtools/client/components/DiffieHellmanEcdh;
.source "DiffieHellmanEcdhNistp384.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/components/DiffieHellmanEcdhNistp384$DiffieHellmanEcdhNistp384Factory;
    }
.end annotation


# static fields
.field private static final KEY_EXCHANGE:Ljava/lang/String; = "ecdh-sha2-nistp384"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 48
    sget-object v4, Lcom/sshtools/common/ssh/SecurityLevel;->STRONG:Lcom/sshtools/common/ssh/SecurityLevel;

    const/16 v5, 0x950

    const-string v1, "ecdh-sha2-nistp384"

    const-string v2, "secp384r1"

    const-string v3, "SHA-384"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/client/components/DiffieHellmanEcdh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method
