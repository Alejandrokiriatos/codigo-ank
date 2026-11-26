.class public Lcom/sshtools/client/components/DiffieHellmanGroupExchangeSha1JCE;
.super Lcom/sshtools/client/components/DiffieHellmanGroupExchange;
.source "DiffieHellmanGroupExchangeSha1JCE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/components/DiffieHellmanGroupExchangeSha1JCE$DiffieHellmanGroupExchangeSha1JCEFactory;
    }
.end annotation


# static fields
.field public static final DIFFIE_HELLMAN_GROUP_EXCHANGE_SHA1:Ljava/lang/String; = "diffie-hellman-group-exchange-sha1"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 59
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    const/16 v1, 0x3ea

    const-string v2, "diffie-hellman-group-exchange-sha1"

    const-string v3, "SHA-1"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method
