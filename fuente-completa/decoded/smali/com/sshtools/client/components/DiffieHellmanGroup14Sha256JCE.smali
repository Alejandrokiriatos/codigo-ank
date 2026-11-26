.class public Lcom/sshtools/client/components/DiffieHellmanGroup14Sha256JCE;
.super Lcom/sshtools/client/components/DiffieHellmanGroup;
.source "DiffieHellmanGroup14Sha256JCE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/components/DiffieHellmanGroup14Sha256JCE$DiffieHellmanGroup14Sha256JCEFactory;
    }
.end annotation


# static fields
.field public static final DIFFIE_HELLMAN_GROUP14_SHA256:Ljava/lang/String; = "diffie-hellman-group14-sha256"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 57
    sget-object v3, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups;->group14:Ljava/math/BigInteger;

    sget-object v4, Lcom/sshtools/common/ssh/SecurityLevel;->STRONG:Lcom/sshtools/common/ssh/SecurityLevel;

    const/16 v5, 0x7d1

    const-string v1, "diffie-hellman-group14-sha256"

    const-string v2, "SHA-256"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/client/components/DiffieHellmanGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method
