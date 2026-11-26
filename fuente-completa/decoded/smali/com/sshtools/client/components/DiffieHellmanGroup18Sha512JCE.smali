.class public Lcom/sshtools/client/components/DiffieHellmanGroup18Sha512JCE;
.super Lcom/sshtools/client/components/DiffieHellmanGroup;
.source "DiffieHellmanGroup18Sha512JCE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/components/DiffieHellmanGroup18Sha512JCE$DiffieHellmanGroup18Sha512JCEFactory;
    }
.end annotation


# static fields
.field public static final DIFFIE_HELLMAN_GROUP18_SHA512:Ljava/lang/String; = "diffie-hellman-group18-sha512"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 58
    sget-object v3, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups;->group18:Ljava/math/BigInteger;

    sget-object v4, Lcom/sshtools/common/ssh/SecurityLevel;->PARANOID:Lcom/sshtools/common/ssh/SecurityLevel;

    const/16 v5, 0xbca

    const-string v1, "diffie-hellman-group18-sha512"

    const-string v2, "SHA-512"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/client/components/DiffieHellmanGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method
