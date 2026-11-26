.class public Lcom/sshtools/client/components/DiffieHellmanGroup1Sha1JCE;
.super Lcom/sshtools/client/components/DiffieHellmanGroup;
.source "DiffieHellmanGroup1Sha1JCE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/components/DiffieHellmanGroup1Sha1JCE$DiffieHellmanGroup1Sha1JCEFactory;
    }
.end annotation


# static fields
.field public static final DIFFIE_HELLMAN_GROUP1_SHA1:Ljava/lang/String; = "diffie-hellman-group1-sha1"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 61
    sget-object v3, Lcom/sshtools/common/ssh/components/DiffieHellmanGroups;->group1:Ljava/math/BigInteger;

    sget-object v4, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    const/16 v5, 0x3e8

    const-string v1, "diffie-hellman-group1-sha1"

    const-string v2, "SHA-1"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/client/components/DiffieHellmanGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method
