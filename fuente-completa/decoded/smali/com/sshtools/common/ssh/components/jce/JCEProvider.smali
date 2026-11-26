.class public Lcom/sshtools/common/ssh/components/jce/JCEProvider;
.super Ljava/lang/Object;
.source "JCEProvider.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/jce/JCEAlgorithms;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;
    }
.end annotation


# static fields
.field static bcEnabled:Ljava/lang/Boolean;

.field static bcProvider:Ljava/security/Provider;

.field static defaultProvider:Ljava/security/Provider;

.field static ecdsaAlgorithmName:Ljava/lang/String;

.field static enableSC:Z

.field static rsaOAEPSHA1WithMG1Padding:Ljava/lang/String;

.field static rsaOAEPSHA256WithMG1Padding:Ljava/lang/String;

.field static secureRandom:Ljava/security/SecureRandom;

.field static secureRandomAlgorithm:Ljava/lang/String;

.field static specficProviders:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->specficProviders:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->secureRandomAlgorithm:Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcEnabled:Ljava/lang/Boolean;

    .line 50
    const-string v0, "EC"

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->ecdsaAlgorithmName:Ljava/lang/String;

    .line 51
    const-string v0, "RSA/None/OAEPWithSHA256AndMGF1Padding"

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->rsaOAEPSHA256WithMG1Padding:Ljava/lang/String;

    .line 52
    const-string v0, "RSA/None/OAEPWithSHA1AndMGF1Padding"

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->rsaOAEPSHA1WithMG1Padding:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->enableSC:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configureBC()Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;
    .locals 3

    const/4 v0, 0x0

    .line 250
    :try_start_0
    sget-boolean v1, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->enableSC:Z

    if-eqz v1, :cond_0

    .line 252
    const-string v1, "org.spongycastle.jce.provider.BouncyCastleProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 253
    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    sput-object v1, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    .line 254
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->SC:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 261
    :catchall_0
    :cond_0
    :try_start_1
    const-string v1, "org.bouncycastle.jcajce.provider.BouncyCastleFipsProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 262
    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    sput-object v1, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    .line 263
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->BCFIPS:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    .line 267
    :catchall_1
    :try_start_2
    const-string v1, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 268
    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    .line 269
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->BC:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    .line 271
    :catchall_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bouncycastle, BCFIPS or SpongyCastle is not installed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static disableBouncyCastle()V
    .locals 3

    .line 312
    const-string v0, "EC"

    const-string v1, "ECDSA"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 313
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->setECDSAAlgorithmName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    :try_start_1
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 317
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->setECDSAAlgorithmName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 319
    :catch_1
    const-string v0, "Unable to determine correct Elliptic Curve algorithm name "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :goto_0
    :try_start_2
    const-string v0, "RSA/NONE/OAEPWithSHA-256AndMGF1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 325
    const-string v0, "RSA/None/OAEPWithSHA-256AndMGF1Padding"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->setRSAOAEPSHA256AlgorithmName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 328
    :catch_2
    :try_start_3
    const-string v0, "RSA/v/OAEPWithSHA256AndMGF1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 329
    const-string v0, "RSA/None/OAEPWithSHA256AndMGF1Padding"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->setRSAOAEPSHA256AlgorithmName(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 331
    :catch_3
    const-string v0, "Unable to determine correct JCE algorithm name for RSA/None/OAEPWithSHA256AndMGF1Padding"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :goto_1
    :try_start_4
    const-string v0, "RSA/v/OAEPWithSHA-1AndMGF1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 337
    const-string v0, "RSA/None/OAEPWithSHA-1AndMGF1Padding"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->setRSAOAEPSHA256AlgorithmName(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 340
    :catch_4
    :try_start_5
    const-string v0, "RSA/NONE/OAEPWithSHA1AndMGF1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 341
    const-string v0, "RSA/None/OAEPWithSHA1AndMGF1Padding"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->setRSAOAEPSHA256AlgorithmName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    .line 343
    :catch_5
    const-string v0, "Unable to determine correct JCE algorithm name for RSA/None/OAEPWithSHA1AndMGF1Padding"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    :goto_2
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->isBCEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Disabling support for Bouncycastle {} provider"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    :cond_0
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 352
    move-object v1, v0

    check-cast v1, Ljava/security/Provider;

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->initializeDefaultProvider(Ljava/security/Provider;)V

    .line 353
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->specficProviders:Ljava/util/Hashtable;

    const-string v1, "DH"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static enableBouncyCastle(Z)V
    .locals 7

    .line 193
    const-string v0, "org.graalvm.nativeimage.kind"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "executable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 194
    const-string p0, "Leaving provider configuration as running a native build."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->configureBC()Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    move-result-object v0

    .line 200
    sget-object v2, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    .line 204
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcEnabled:Ljava/lang/Boolean;

    .line 206
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 207
    invoke-virtual {v5}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    sget-object v1, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Adding Bouncycastle {} provider to Security Providers"

    invoke-static {v3, v1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_3
    sget-object v1, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->SC:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    if-ne v0, v1, :cond_4

    .line 218
    sget-object v1, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v2}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    goto :goto_1

    .line 220
    :cond_4
    sget-object v1, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 224
    :goto_1
    sget-object v1, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->SC:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 225
    const-string v0, "ECDSA"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->setECDSAAlgorithmName(Ljava/lang/String;)V

    .line 228
    :cond_5
    const-string v0, "RSA/None/OAEPWithSHA256AndMGF1Padding"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->setRSAOAEPSHA256AlgorithmName(Ljava/lang/String;)V

    .line 229
    const-string v0, "RSA/None/OAEPWithSHA1AndMGF1Padding"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->setRSAOAEPSHA1AlgorithmName(Ljava/lang/String;)V

    if-eqz p0, :cond_7

    .line 232
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 233
    sget-object p0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Configuring Bouncycastle {} provider as default for all algorithms"

    invoke-static {v0, p0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :cond_6
    sget-object p0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->initializeDefaultProvider(Ljava/security/Provider;)V

    return-void

    .line 237
    :cond_7
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 238
    sget-object p0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Configuring DH support with Bouncycastle {} provider"

    invoke-static {v0, p0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :cond_8
    const-string p0, "DH"

    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->initializeProviderForAlgorithm(Ljava/lang/String;Ljava/security/Provider;)V

    .line 241
    const-string p0, "DH_KeyAgreement"

    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->initializeProviderForAlgorithm(Ljava/lang/String;Ljava/security/Provider;)V

    .line 242
    const-string p0, "DH_KeyFactory"

    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->initializeProviderForAlgorithm(Ljava/lang/String;Ljava/security/Provider;)V

    .line 243
    const-string p0, "DH_KeyGenerator"

    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    invoke-static {p0, v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->initializeProviderForAlgorithm(Ljava/lang/String;Ljava/security/Provider;)V

    return-void

    .line 201
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Bouncycastle JCE provider cannot be found on the classpath"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enableSpongyCastle(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 188
    sput-boolean v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->enableSC:Z

    .line 189
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->enableBouncyCastle(Z)V

    return-void
.end method

.method public static getBCProvider()Ljava/security/Provider;
    .locals 1

    .line 181
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->configureBC()Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    .line 184
    :cond_0
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    return-object v0
.end method

.method public static getDHKeyAgreement()Ljavax/crypto/KeyAgreement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 288
    const-string v0, "DH_KeyGenerator"

    const-string v1, "DH"

    :try_start_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 289
    invoke-static {v1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {v1, v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 292
    :catch_0
    invoke-static {v1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    return-object v0
.end method

.method public static getDHKeyFactory()Ljava/security/KeyFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 278
    const-string v0, "DH_KeyFactory"

    const-string v1, "DH"

    :try_start_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 279
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0

    .line 280
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 282
    :catch_0
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getDHKeyGenerator()Ljava/security/KeyPairGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 299
    const-string v0, "DH_KeyAgreement"

    const-string v1, "DH"

    :try_start_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 300
    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0

    .line 302
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 301
    invoke-static {v1, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 304
    :catch_0
    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultProvider()Ljava/security/Provider;
    .locals 1

    .line 168
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->defaultProvider:Ljava/security/Provider;

    return-object v0
.end method

.method public static getECDSAAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 366
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->ecdsaAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public static getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 394
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 395
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "Getting key factory algorithm {} from default provider"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    :cond_0
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0

    .line 400
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Getting key factory algorithm {} from provider {}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    :cond_2
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0
.end method

.method public static getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;
    .locals 1

    .line 135
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->specficProviders:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->specficProviders:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Provider;

    return-object p0

    .line 139
    :cond_0
    sget-object p0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->defaultProvider:Ljava/security/Provider;

    return-object p0
.end method

.method public static getRSAOAEPSHA1AlgorithmName()Ljava/lang/String;
    .locals 1

    .line 386
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->rsaOAEPSHA1WithMG1Padding:Ljava/lang/String;

    return-object v0
.end method

.method public static getRSAOAEPSHA256AlgorithmName()Ljava/lang/String;
    .locals 1

    .line 382
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->rsaOAEPSHA256WithMG1Padding:Ljava/lang/String;

    return-object v0
.end method

.method public static getSecureRandom()Ljava/security/SecureRandom;
    .locals 2

    .line 149
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_2

    .line 151
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->secureRandom:Ljava/security/SecureRandom;

    goto :goto_1

    .line 154
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 155
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->secureRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 160
    :catch_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->secureRandom:Ljava/security/SecureRandom;

    return-object v0

    .line 164
    :cond_2
    :goto_1
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public static getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 1

    .line 118
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->secureRandomAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public static getSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 408
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 409
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "Getting signature algorithm {} from default provider"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :cond_0
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0

    .line 414
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Getting signature algorithm {} from provider {}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    :cond_2
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.method public static hasBCProvider()Z
    .locals 1

    .line 176
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static initializeDefaultProvider(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 78
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 82
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->initializeDefaultProvider(Ljava/security/Provider;)V

    return-void

    .line 80
    :cond_0
    new-instance p0, Ljava/security/NoSuchProviderException;

    invoke-direct {p0}, Ljava/security/NoSuchProviderException;-><init>()V

    throw p0
.end method

.method public static initializeDefaultProvider(Ljava/security/Provider;)V
    .locals 0

    .line 69
    sput-object p0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->defaultProvider:Ljava/security/Provider;

    return-void
.end method

.method public static initializeProviderForAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 105
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    invoke-static {p0, p1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->initializeProviderForAlgorithm(Ljava/lang/String;Ljava/security/Provider;)V

    return-void

    .line 107
    :cond_0
    new-instance p0, Ljava/security/NoSuchProviderException;

    invoke-direct {p0}, Ljava/security/NoSuchProviderException;-><init>()V

    throw p0
.end method

.method public static initializeProviderForAlgorithm(Ljava/lang/String;Ljava/security/Provider;)V
    .locals 2

    .line 91
    const-string v0, "org.graalvm.nativeimage.kind"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "executable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 92
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Leaving provider configuration as running a native build."

    invoke-static {p1, p0}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 95
    :cond_0
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->specficProviders:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static isBCDisabled()Z
    .locals 1

    .line 374
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isBCEnabled()Z
    .locals 2

    .line 359
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 362
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method static setBCProvider(Ljava/security/Provider;)V
    .locals 0

    .line 172
    sput-object p0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->bcProvider:Ljava/security/Provider;

    return-void
.end method

.method public static setECDSAAlgorithmName(Ljava/lang/String;)V
    .locals 0

    .line 370
    sput-object p0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->ecdsaAlgorithmName:Ljava/lang/String;

    return-void
.end method

.method public static setRSAOAEPSHA1AlgorithmName(Ljava/lang/String;)V
    .locals 0

    .line 390
    sput-object p0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->rsaOAEPSHA1WithMG1Padding:Ljava/lang/String;

    return-void
.end method

.method public static setRSAOAEPSHA256AlgorithmName(Ljava/lang/String;)V
    .locals 0

    .line 378
    sput-object p0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->rsaOAEPSHA256WithMG1Padding:Ljava/lang/String;

    return-void
.end method

.method public static setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 126
    sput-object p0, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->secureRandomAlgorithm:Ljava/lang/String;

    return-void
.end method
