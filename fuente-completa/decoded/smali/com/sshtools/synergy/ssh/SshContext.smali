.class public abstract Lcom/sshtools/synergy/ssh/SshContext;
.super Lcom/sshtools/synergy/nio/ProtocolContext;
.source "SshContext.java"

# interfaces
.implements Lcom/sshtools/common/ssh/ExecutorServiceProvider;
.implements Lcom/sshtools/common/ssh/Context;


# static fields
.field public static final CIPHER_AES128_CBC:Ljava/lang/String; = "aes128-cbc"

.field public static final CIPHER_AES128_CTR:Ljava/lang/String; = "aes128-ctr"

.field public static final CIPHER_AES192_CBC:Ljava/lang/String; = "aes192-cbc"

.field public static final CIPHER_AES192_CTR:Ljava/lang/String; = "aes192-ctr"

.field public static final CIPHER_AES256_CBC:Ljava/lang/String; = "aes256-cbc"

.field public static final CIPHER_AES256_CTR:Ljava/lang/String; = "aes256-ctr"

.field public static final CIPHER_AES_GCM_128:Ljava/lang/String; = "aes128-gcm@openssh.com"

.field public static final CIPHER_AES_GCM_256:Ljava/lang/String; = "aes256-gcm@openssh.com"

.field public static final CIPHER_ARCFOUR:Ljava/lang/String; = "arcfour"

.field public static final CIPHER_ARCFOUR_128:Ljava/lang/String; = "arcfour128"

.field public static final CIPHER_ARCFOUR_256:Ljava/lang/String; = "arcfour256"

.field public static final CIPHER_BLOWFISH_CBC:Ljava/lang/String; = "blowfish-cbc"

.field public static final CIPHER_TRIPLEDES_CBC:Ljava/lang/String; = "3des-cbc"

.field public static final CIPHER_TRIPLEDES_CTR:Ljava/lang/String; = "3des-ctr"

.field public static final COMPRESSION_NONE:Ljava/lang/String; = "none"

.field public static final COMPRESSION_ZLIB:Ljava/lang/String; = "zlib"

.field public static final HMAC_MD5:Ljava/lang/String; = "hmac-md5"

.field public static final HMAC_MD5_96:Ljava/lang/String; = "hmac-md5-96"

.field public static final HMAC_MD5_ETM:Ljava/lang/String; = "hmac-md5-etm@openssh.com"

.field public static final HMAC_RIPEMD160:Ljava/lang/String; = "hmac-ripemd160"

.field public static final HMAC_RIPEMD160_ETM:Ljava/lang/String; = "hmac-ripemd160-etm@openssh.com"

.field public static final HMAC_SHA1:Ljava/lang/String; = "hmac-sha1"

.field public static final HMAC_SHA1_96:Ljava/lang/String; = "hmac-sha1-96"

.field public static final HMAC_SHA1_ETM:Ljava/lang/String; = "hmac-sha1-etm@openssh.com"

.field public static final HMAC_SHA256:Ljava/lang/String; = "hmac-sha2-256"

.field public static final HMAC_SHA256_96:Ljava/lang/String; = "hmac-sha2-256-96"

.field public static final HMAC_SHA256_ETM:Ljava/lang/String; = "hmac-sha2-256-etm@openssh.com"

.field public static final HMAC_SHA512:Ljava/lang/String; = "hmac-sha2-512"

.field public static final HMAC_SHA512_96:Ljava/lang/String; = "hmac-sha2-512-96"

.field public static final HMAC_SHA512_ETM:Ljava/lang/String; = "hmac-sha2-512-etm@openssh.com"

.field public static final KEX_DIFFIE_HELLMAN_ECDH_NISTP_256:Ljava/lang/String; = "ecdh-sha2-nistp256"

.field public static final KEX_DIFFIE_HELLMAN_ECDH_NISTP_384:Ljava/lang/String; = "ecdh-sha2-nistp384"

.field public static final KEX_DIFFIE_HELLMAN_ECDH_NISTP_521:Ljava/lang/String; = "ecdh-sha2-nistp521"

.field public static final KEX_DIFFIE_HELLMAN_GROUP14_SHA1:Ljava/lang/String; = "diffie-hellman-group14-sha1"

.field public static final KEX_DIFFIE_HELLMAN_GROUP14_SHA256:Ljava/lang/String; = "diffie-hellman-group14-sha256"

.field public static final KEX_DIFFIE_HELLMAN_GROUP15_SHA512:Ljava/lang/String; = "diffie-hellman-group15-sha512"

.field public static final KEX_DIFFIE_HELLMAN_GROUP16_SHA512:Ljava/lang/String; = "diffie-hellman-group16-sha512"

.field public static final KEX_DIFFIE_HELLMAN_GROUP17_SHA512:Ljava/lang/String; = "diffie-hellman-group17-sha512"

.field public static final KEX_DIFFIE_HELLMAN_GROUP18_SHA512:Ljava/lang/String; = "diffie-hellman-group18-sha512"

.field public static final KEX_DIFFIE_HELLMAN_GROUP1_SHA1:Ljava/lang/String; = "diffie-hellman-group1-sha1"

.field public static final KEX_DIFFIE_HELLMAN_GROUP_EXCHANGE_SHA1:Ljava/lang/String; = "diffie-hellman-group-exchange-sha1"

.field public static final KEX_DIFFIE_HELLMAN_GROUP_EXCHANGE_SHA256:Ljava/lang/String; = "diffie-hellman-group-exchange-sha256"

.field public static final KEYBOARD_INTERACTIVE_AUTHENTICATION:Ljava/lang/String; = "keyboard-interactive"

.field public static final PASSWORD_AUTHENTICATION:Ljava/lang/String; = "password"

.field public static final PUBLICKEY_AUTHENTICATION:Ljava/lang/String; = "publickey"

.field public static final PUBLIC_KEY_ECDSA_SHA2_NISPTP_256:Ljava/lang/String; = "ecdsa-sha2-nistp256"

.field public static final PUBLIC_KEY_ECDSA_SHA2_NISPTP_384:Ljava/lang/String; = "ecdsa-sha2-nistp384"

.field public static final PUBLIC_KEY_ECDSA_SHA2_NISPTP_521:Ljava/lang/String; = "ecdsa-sha2-nistp521"

.field public static final PUBLIC_KEY_ED25519:Ljava/lang/String; = "ssh-ed25519"

.field public static final PUBLIC_KEY_ED448:Ljava/lang/String; = "ssh-ed448"

.field public static final PUBLIC_KEY_RSA_SHA256:Ljava/lang/String; = "rsa-sha2-256"

.field public static final PUBLIC_KEY_RSA_SHA512:Ljava/lang/String; = "rsa-sha2-512"

.field public static final PUBLIC_KEY_SSHDSS:Ljava/lang/String; = "ssh-dss"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PUBLIC_KEY_SSHRSA:Ljava/lang/String; = "ssh-rsa"

.field protected static executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field protected MAX_NUM_BYTES_BEFORE_REKEY:J

.field protected MAX_NUM_PACKETS_BEFORE_REKEY:J

.field protected byteBufferPool:Lcom/sshtools/common/util/ByteBufferPool;

.field protected ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshCipher;",
            ">;"
        }
    .end annotation
.end field

.field protected ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshCipher;",
            ">;"
        }
    .end annotation
.end field

.field protected componentManager:Lcom/sshtools/common/ssh/components/ComponentManager;

.field protected compressionLevel:I

.field protected compressionsCS:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/compression/SshCompression;",
            ">;"
        }
    .end annotation
.end field

.field protected compressionsSC:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/compression/SshCompression;",
            ">;"
        }
    .end annotation
.end field

.field protected daemon:Lcom/sshtools/synergy/nio/SshEngine;

.field eventListener:Lcom/sshtools/common/events/EventListener;

.field protected extendedIdentificationSanitization:Z

.field httpRedirect:Z

.field httpRedirectUrl:Ljava/lang/String;

.field protected idleAuthenticationTimeoutSeconds:I

.field protected idleConnectionTimeout:I

.field protected keepAliveDataMaxLength:I

.field protected keepAliveInterval:I

.field protected keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/synergy/ssh/components/SshKeyExchange<",
            "+",
            "Lcom/sshtools/synergy/ssh/SshContext;",
            ">;>;"
        }
    .end annotation
.end field

.field protected killTunnelsOnRemoteForwardingCancel:Z

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/ssh/ExecutorOperationListener;",
            ">;"
        }
    .end annotation
.end field

.field protected locale:Ljava/util/Locale;

.field protected macCS:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshHmac;",
            ">;"
        }
    .end annotation
.end field

.field protected macSC:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshHmac;",
            ">;"
        }
    .end annotation
.end field

.field protected maxChannels:I

.field protected maxDHGroupExchangeKeySize:I

.field protected maximumPacketLength:I

.field protected maximumSocketsBacklogPerRemotelyForwardedConnection:I

.field protected minDHGroupExchangeKeySize:I

.field policies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected prefCipherCS:Ljava/lang/String;

.field protected prefCipherSC:Ljava/lang/String;

.field protected prefCompressionCS:Ljava/lang/String;

.field protected prefCompressionSC:Ljava/lang/String;

.field protected prefKeyExchange:Ljava/lang/String;

.field protected prefMacCS:Ljava/lang/String;

.field protected prefMacSC:Ljava/lang/String;

.field protected prefPublicKey:Ljava/lang/String;

.field protected preferredDHGroupExchangeKeySize:I

.field protected publicKeys:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation
.end field

.field protected sendIgnorePacketOnIdle:Z

.field private sha1SignaturesSupported:Z

.field protected signatures:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation
.end field

.field protected socketConnectionFactory:Lcom/sshtools/synergy/nio/SocketConnectionFactory;

.field protected softwareVersionComments:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/components/ComponentManager;Lcom/sshtools/common/ssh/SecurityLevel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ProtocolContext;-><init>()V

    const/16 v0, 0x32

    .line 208
    iput v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->maximumSocketsBacklogPerRemotelyForwardedConnection:I

    .line 209
    new-instance v0, Lcom/sshtools/synergy/nio/DefaultSocketConnectionFactory;

    invoke-direct {v0}, Lcom/sshtools/synergy/nio/DefaultSocketConnectionFactory;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->socketConnectionFactory:Lcom/sshtools/synergy/nio/SocketConnectionFactory;

    .line 221
    const-string v0, "aes256-ctr"

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherCS:Ljava/lang/String;

    .line 222
    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherSC:Ljava/lang/String;

    .line 224
    const-string v0, "hmac-sha2-256"

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacCS:Ljava/lang/String;

    .line 225
    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacSC:Ljava/lang/String;

    .line 227
    const-string v0, "none"

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCompressionCS:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCompressionSC:Ljava/lang/String;

    .line 230
    const-string v0, "diffie-hellman-group-exchange-sha256"

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefKeyExchange:Ljava/lang/String;

    .line 232
    const-string v0, "ssh-ed25519"

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefPublicKey:Ljava/lang/String;

    const/16 v0, 0x64

    .line 234
    iput v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->maxChannels:I

    const/4 v0, 0x6

    .line 236
    iput v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionLevel:I

    const v0, 0x20100

    .line 237
    iput v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->maximumPacketLength:I

    const-wide/32 v0, 0x7fffffff

    .line 239
    iput-wide v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->MAX_NUM_PACKETS_BEFORE_REKEY:J

    const-wide/32 v0, 0x40000000

    .line 240
    iput-wide v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->MAX_NUM_BYTES_BEFORE_REKEY:J

    .line 244
    const-string v0, "MaverickSynergy"

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->softwareVersionComments:Ljava/lang/String;

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->extendedIdentificationSanitization:Z

    const/4 v1, 0x0

    .line 246
    iput-boolean v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->killTunnelsOnRemoteForwardingCancel:Z

    .line 248
    iput-boolean v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->sendIgnorePacketOnIdle:Z

    const/16 v1, 0x258

    .line 249
    iput v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->idleConnectionTimeout:I

    const/16 v1, 0x1e

    .line 250
    iput v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->idleAuthenticationTimeoutSeconds:I

    .line 251
    iput v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->keepAliveInterval:I

    const/16 v1, 0x80

    .line 252
    iput v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->keepAliveDataMaxLength:I

    .line 256
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    .line 257
    iput-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->byteBufferPool:Lcom/sshtools/common/util/ByteBufferPool;

    const/16 v1, 0x800

    .line 259
    iput v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->minDHGroupExchangeKeySize:I

    .line 260
    iput v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->preferredDHGroupExchangeKeySize:I

    const/16 v1, 0x2000

    .line 261
    iput v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->maxDHGroupExchangeKeySize:I

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->listeners:Ljava/util/List;

    .line 270
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->policies:Ljava/util/Map;

    .line 273
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->sha1SignaturesSupported:Z

    .line 280
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->componentManager:Lcom/sshtools/common/ssh/components/ComponentManager;

    .line 282
    new-instance v1, Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-direct {v1, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 283
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->configureKeyExchanges()V

    .line 284
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->configureSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;)V

    .line 286
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedSsh2CiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 287
    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->configureSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;)V

    .line 288
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedSsh2CiphersSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 289
    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->configureSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;)V

    .line 290
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedHMacsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->macCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 291
    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->configureSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;)V

    .line 292
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedHMacsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->macSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 293
    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->configureSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;)V

    .line 294
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->publicKeys:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 295
    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->configureSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;)V

    .line 296
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->signatures:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 297
    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->configureSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;)V

    .line 301
    :try_start_0
    new-instance p2, Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V

    iput-object p2, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionsCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 302
    new-instance p2, Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V

    iput-object p2, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionsSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 304
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionsCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    new-instance p2, Lcom/sshtools/common/ssh/compression/NoneCompression$NoneCompressionFactory;

    invoke-direct {p2}, Lcom/sshtools/common/ssh/compression/NoneCompression$NoneCompressionFactory;-><init>()V

    invoke-virtual {p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->add(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)V

    .line 305
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionsSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    new-instance p2, Lcom/sshtools/common/ssh/compression/NoneCompression$NoneCompressionFactory;

    invoke-direct {p2}, Lcom/sshtools/common/ssh/compression/NoneCompression$NoneCompressionFactory;-><init>()V

    invoke-virtual {p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->add(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)V

    .line 307
    const-class p1, Lcom/sshtools/common/ssh/compression/SshCompressionFactory;

    .line 308
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/common/ssh/components/ComponentManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 307
    invoke-static {p1, p2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/common/ssh/compression/SshCompressionFactory;

    .line 309
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionsCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->add(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)V

    .line 310
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionsSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->add(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 318
    :cond_0
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->keepAlive:Z

    .line 319
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->tcpNoDelay:Z

    return-void

    :catchall_0
    move-exception p1

    .line 314
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/common/ssh/components/ComponentManager;Lcom/sshtools/common/ssh/SecurityLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 336
    invoke-direct {p0, p2, p3}, Lcom/sshtools/synergy/ssh/SshContext;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;Lcom/sshtools/common/ssh/SecurityLevel;)V

    .line 337
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/SshContext;->init(Lcom/sshtools/synergy/nio/SshEngine;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addOperationListener(Lcom/sshtools/common/ssh/ExecutorOperationListener;)V
    .locals 1

    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract configureKeyExchanges()V
.end method

.method public abstract createEngine(Lcom/sshtools/synergy/nio/ConnectRequestFuture;)Lcom/sshtools/synergy/nio/ProtocolEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public enableFIPSMode()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1214
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1215
    const-string v0, "Enabling FIPS mode"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    const-string v2, "diffie-hellman-group14-sha1"

    invoke-virtual {v0, v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1225
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1226
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1228
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SshContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->toArray()[Ljava/lang/String;

    move-result-object v2

    move v3, v1

    .line 1229
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1230
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1231
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1232
    aget-object v4, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing key exchange "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1233
    :cond_1
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/SshContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Lcom/sshtools/common/ssh/components/ComponentFactory;->remove(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1237
    :cond_3
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SshContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->lockComponents()V

    .line 1239
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1241
    const-string v2, "aes128-cbc"

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1242
    const-string v2, "aes192-cbc"

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1243
    const-string v2, "aes256-cbc"

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1244
    const-string v2, "3des-cbc"

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1246
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->toArray()[Ljava/lang/String;

    move-result-object v2

    move v3, v1

    .line 1247
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_6

    .line 1248
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1249
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1250
    aget-object v4, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing cipher client->server "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1251
    :cond_4
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Lcom/sshtools/common/ssh/components/ComponentFactory;->remove(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1255
    :cond_6
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->lockComponents()V

    .line 1257
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->toArray()[Ljava/lang/String;

    move-result-object v2

    move v3, v1

    .line 1258
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_9

    .line 1259
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1260
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1261
    aget-object v4, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing cipher server->client "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1262
    :cond_7
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Lcom/sshtools/common/ssh/components/ComponentFactory;->remove(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1266
    :cond_9
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->lockComponents()V

    .line 1268
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1270
    const-string v2, "ssh-rsa"

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1272
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SshContext;->publicKeys:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->toArray()[Ljava/lang/String;

    move-result-object v2

    move v3, v1

    .line 1273
    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_c

    .line 1274
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1275
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1276
    aget-object v4, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing public key "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1277
    :cond_a
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/SshContext;->publicKeys:Lcom/sshtools/common/ssh/components/ComponentFactory;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Lcom/sshtools/common/ssh/components/ComponentFactory;->remove(Ljava/lang/String;)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1281
    :cond_c
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SshContext;->publicKeys:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->lockComponents()V

    .line 1283
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1285
    const-string v2, "hmac-sha1"

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1286
    const-string v2, "hmac-sha2-256"

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1287
    const-string v2, "hmac-sha256@ssh.com"

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1289
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SshContext;->macCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->toArray()[Ljava/lang/String;

    move-result-object v2

    move v3, v1

    .line 1290
    :goto_4
    array-length v4, v2

    if-ge v3, v4, :cond_f

    .line 1291
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1292
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1293
    aget-object v4, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing mac client->server "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1294
    :cond_d
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/SshContext;->macCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Lcom/sshtools/common/ssh/components/ComponentFactory;->remove(Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1298
    :cond_f
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SshContext;->macCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->lockComponents()V

    .line 1300
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SshContext;->macSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->toArray()[Ljava/lang/String;

    move-result-object v2

    move v3, v1

    .line 1301
    :goto_5
    array-length v4, v2

    if-ge v3, v4, :cond_12

    .line 1302
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1303
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1304
    aget-object v4, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing mac server->client "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1305
    :cond_10
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/SshContext;->macSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Lcom/sshtools/common/ssh/components/ComponentFactory;->remove(Ljava/lang/String;)V

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1309
    :cond_12
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->lockComponents()V

    return-void

    .line 1218
    :cond_13
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "Cannot enable FIPS mode because diffie-hellman-group14-sha1 keyexchange was not supported by this configuration. Install a JCE Provider that supports a prime size of 2048 bits (for example BouncyCastle provider)"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public declared-synchronized getByteBufferPool()Lcom/sshtools/common/util/ByteBufferPool;
    .locals 3

    monitor-enter p0

    .line 1348
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->byteBufferPool:Lcom/sshtools/common/util/ByteBufferPool;

    if-nez v0, :cond_0

    .line 1349
    new-instance v0, Lcom/sshtools/common/util/ByteBufferPool;

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->getMaximumPacketLength()I

    move-result v1

    .line 1350
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->getEngine()Lcom/sshtools/synergy/nio/SshEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/synergy/nio/SshEngine;->getContext()Lcom/sshtools/synergy/nio/SshEngineContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/synergy/nio/SshEngineContext;->isUsingDirectBuffers()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/ByteBufferPool;-><init>(IZ)V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->byteBufferPool:Lcom/sshtools/common/util/ByteBufferPool;

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->byteBufferPool:Lcom/sshtools/common/util/ByteBufferPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract getChannelFactory()Lcom/sshtools/synergy/ssh/ChannelFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/ChannelFactory<",
            "+",
            "Lcom/sshtools/synergy/ssh/SshContext;",
            ">;"
        }
    .end annotation
.end method

.method public getChannelLimit()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->maxChannels:I

    return v0
.end method

.method public getCiphersCS()Ljava/lang/String;
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherCS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCiphersSC()Ljava/lang/String;
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherSC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponentManager()Lcom/sshtools/common/ssh/components/ComponentManager;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->componentManager:Lcom/sshtools/common/ssh/components/ComponentManager;

    return-object v0
.end method

.method public getCompressionLevel()I
    .locals 1

    .line 900
    iget v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionLevel:I

    return v0
.end method

.method public abstract getConnectionManager()Lcom/sshtools/synergy/ssh/ConnectionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/ConnectionManager<",
            "+",
            "Lcom/sshtools/synergy/ssh/SshContext;",
            ">;"
        }
    .end annotation
.end method

.method public getDaemonContext()Lcom/sshtools/synergy/nio/SshEngineContext;
    .locals 1

    .line 1356
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngine;->getContext()Lcom/sshtools/synergy/nio/SshEngineContext;

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Lcom/sshtools/synergy/nio/SshEngine;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    return-object v0
.end method

.method public getEventListener()Lcom/sshtools/common/events/EventListener;
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->eventListener:Lcom/sshtools/common/events/EventListener;

    return-object v0
.end method

.method public declared-synchronized getExecutorListeners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/common/ssh/ExecutorOperationListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 400
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 1314
    sget-object v0, Lcom/sshtools/synergy/ssh/SshContext;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 1315
    new-instance v0, Lcom/sshtools/synergy/ssh/SshContext$1;

    invoke-direct {v0, p0}, Lcom/sshtools/synergy/ssh/SshContext$1;-><init>(Lcom/sshtools/synergy/ssh/SshContext;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1322
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    new-instance v2, Lcom/sshtools/synergy/ssh/SshContext$2;

    invoke-direct {v2, p0}, Lcom/sshtools/synergy/ssh/SshContext$2;-><init>(Lcom/sshtools/synergy/ssh/SshContext;)V

    invoke-virtual {v1, v2}, Lcom/sshtools/synergy/nio/SshEngine;->addShutdownHook(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1329
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Lcom/sshtools/synergy/ssh/SshContext$3;

    invoke-direct {v2, p0}, Lcom/sshtools/synergy/ssh/SshContext$3;-><init>(Lcom/sshtools/synergy/ssh/SshContext;)V

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 1335
    :goto_0
    sput-object v0, Lcom/sshtools/synergy/ssh/SshContext;->executor:Ljava/util/concurrent/ExecutorService;

    .line 1337
    :cond_1
    sget-object v0, Lcom/sshtools/synergy/ssh/SshContext;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public abstract getForwardingManager()Lcom/sshtools/synergy/ssh/ForwardingManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/ForwardingManager<",
            "+",
            "Lcom/sshtools/synergy/ssh/SshContext;",
            ">;"
        }
    .end annotation
.end method

.method public getForwardingPolicy()Lcom/sshtools/common/forwarding/ForwardingPolicy;
    .locals 1

    .line 1431
    const-class v0, Lcom/sshtools/common/forwarding/ForwardingPolicy;

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/SshContext;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/forwarding/ForwardingPolicy;

    return-object v0
.end method

.method public abstract getGlobalRequestHandler(Ljava/lang/String;)Lcom/sshtools/synergy/ssh/GlobalRequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sshtools/synergy/ssh/GlobalRequestHandler<",
            "+",
            "Lcom/sshtools/synergy/ssh/SshContext;",
            ">;"
        }
    .end annotation
.end method

.method public getHttpRedirectUrl()Ljava/lang/String;
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->httpRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleAuthenticationTimeoutSeconds()I
    .locals 1

    .line 1360
    iget v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->idleAuthenticationTimeoutSeconds:I

    return v0
.end method

.method public getIdleConnectionTimeoutSeconds()I
    .locals 1

    .line 1146
    iget v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->idleConnectionTimeout:I

    return v0
.end method

.method public getKeepAliveDataMaxLength()I
    .locals 1

    .line 1189
    iget v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->keepAliveDataMaxLength:I

    return v0
.end method

.method public getKeepAliveInterval()I
    .locals 1

    .line 1170
    iget v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->keepAliveInterval:I

    return v0
.end method

.method public getKeyExchangePacketLimit()J
    .locals 2

    .line 1137
    iget-wide v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->MAX_NUM_PACKETS_BEFORE_REKEY:J

    return-wide v0
.end method

.method public getKeyExchangeTransferLimit()J
    .locals 2

    .line 1128
    iget-wide v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->MAX_NUM_BYTES_BEFORE_REKEY:J

    return-wide v0
.end method

.method public getKeyExchanges()Ljava/lang/String;
    .locals 2

    .line 958
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefKeyExchange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMacsCS()Ljava/lang/String;
    .locals 2

    .line 931
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacCS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacsSC()Ljava/lang/String;
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacSC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDHGroupExchangeKeySize()I
    .locals 1

    .line 1423
    iget v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->maxDHGroupExchangeKeySize:I

    return v0
.end method

.method public getMaximumPacketLength()I
    .locals 1

    .line 1091
    iget v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->maximumPacketLength:I

    return v0
.end method

.method public getMaximumSocketsBacklogPerRemotelyForwardedConnection()I
    .locals 1

    .line 904
    iget v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->maximumSocketsBacklogPerRemotelyForwardedConnection:I

    return v0
.end method

.method public getMinDHGroupExchangeKeySize()I
    .locals 1

    .line 1368
    iget v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->minDHGroupExchangeKeySize:I

    return v0
.end method

.method public getPolicy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->policies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->policies:Ljava/util/Map;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->policies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    .line 361
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPolicy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;TP;)TP;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->policies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->policies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_0
    iget-object p2, p0, Lcom/sshtools/synergy/ssh/SshContext;->policies:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPreferredCipherCS()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherCS:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredCipherSC()Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherSC:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredCompressionCS()Ljava/lang/String;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCompressionCS:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredCompressionSC()Ljava/lang/String;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCompressionSC:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredDHGroupExchangeKeySize()I
    .locals 1

    .line 1415
    iget v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->preferredDHGroupExchangeKeySize:I

    return v0
.end method

.method public getPreferredKeyExchange()Ljava/lang/String;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefKeyExchange:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredMacCS()Ljava/lang/String;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacCS:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredMacSC()Ljava/lang/String;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacSC:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPreferredPublicKey()Ljava/lang/String;
.end method

.method public getPublicKeys()Ljava/lang/String;
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->publicKeys:Lcom/sshtools/common/ssh/components/ComponentFactory;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefPublicKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteForwardingCancelKillsTunnels()Z
    .locals 1

    .line 705
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->killTunnelsOnRemoteForwardingCancel:Z

    return v0
.end method

.method public getSocketConnectionFactory()Lcom/sshtools/synergy/nio/SocketConnectionFactory;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->socketConnectionFactory:Lcom/sshtools/synergy/nio/SocketConnectionFactory;

    return-object v0
.end method

.method public getSoftwareVersionComments()Ljava/lang/String;
    .locals 3

    .line 560
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->extendedIdentificationSanitization:Z

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->softwareVersionComments:Ljava/lang/String;

    const/16 v1, 0x20

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->softwareVersionComments:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSupportedPublicKeys()Ljava/lang/String;
.end method

.method public getSupportedSignatures()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "3.1.4"
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->signatures:Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public hasPolicy(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->policies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public init(Lcom/sshtools/synergy/nio/SshEngine;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    return-void
.end method

.method public isExtendedIdentificationSanitization()Z
    .locals 1

    .line 709
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->extendedIdentificationSanitization:Z

    return v0
.end method

.method public isHttpRedirect()Z
    .locals 1

    .line 1399
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->httpRedirect:Z

    return v0
.end method

.method public isSHA1SignaturesSupported()Z
    .locals 1

    .line 1435
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->sha1SignaturesSupported:Z

    return v0
.end method

.method public isSendIgnorePacketOnIdle()Z
    .locals 1

    .line 1391
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->sendIgnorePacketOnIdle:Z

    return v0
.end method

.method protected varargs listPublicKeys([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1380
    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    .line 1381
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefPublicKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ","

    if-nez v5, :cond_1

    .line 1382
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    move-object v6, v1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1384
    :cond_1
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefPublicKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    move-object v6, v1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public declared-synchronized removeOperationListener(Lcom/sshtools/common/ssh/ExecutorOperationListener;)V
    .locals 1

    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setChannelLimit(I)V
    .locals 0

    .line 430
    iput p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->maxChannels:I

    return-void
.end method

.method public setCipherPreferredPositionCS(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->changePositionofAlgorithm(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherCS:Ljava/lang/String;

    return-void
.end method

.method public setCipherPreferredPositionSC(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->changePositionofAlgorithm(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherSC:Ljava/lang/String;

    return-void
.end method

.method public setCompressionLevel(I)V
    .locals 0

    .line 891
    iput p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionLevel:I

    return-void
.end method

.method public setEventListener(Lcom/sshtools/common/events/EventListener;)V
    .locals 0

    .line 1447
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->eventListener:Lcom/sshtools/common/events/EventListener;

    return-void
.end method

.method public setExtendedIdentificationSanitization(Z)V
    .locals 0

    .line 713
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->extendedIdentificationSanitization:Z

    return-void
.end method

.method public setHttpRedirect(Z)V
    .locals 0

    .line 1403
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->httpRedirect:Z

    return-void
.end method

.method public setHttpRedirectUrl(Ljava/lang/String;)V
    .locals 0

    .line 1411
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->httpRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method public setIdleAuthenticationTimeoutSeconds(I)V
    .locals 0

    .line 1364
    iput p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->idleAuthenticationTimeoutSeconds:I

    return-void
.end method

.method public setIdleConnectionTimeoutSeconds(I)V
    .locals 0

    .line 1156
    iput p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->idleConnectionTimeout:I

    return-void
.end method

.method public setKeepAliveDataMaxLength(I)V
    .locals 0

    .line 1199
    iput p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->keepAliveDataMaxLength:I

    return-void
.end method

.method public setKeepAliveInterval(I)V
    .locals 0

    .line 1180
    iput p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->keepAliveInterval:I

    return-void
.end method

.method public setKeyExchangePacketLimit(I)V
    .locals 2

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    int-to-long v0, p1

    .line 1119
    iput-wide v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->MAX_NUM_PACKETS_BEFORE_REKEY:J

    return-void

    .line 1117
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The minimum number of packets allowed between key exchanges is 100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyExchangePreferredPosition(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->changePositionofAlgorithm(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacCS:Ljava/lang/String;

    return-void
.end method

.method public setKeyExchangeTransferLimit(J)V
    .locals 2

    const-wide/32 v0, 0xfa000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1105
    iput-wide p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->MAX_NUM_BYTES_BEFORE_REKEY:J

    return-void

    .line 1103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The minimum number of bytes allowed between key exchange is 1MB (1024000 bytes)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setMacPreferredPositionCS(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1062
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->changePositionofAlgorithm(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacCS:Ljava/lang/String;

    return-void
.end method

.method public setMacPreferredPositionSC(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->changePositionofAlgorithm(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacSC:Ljava/lang/String;

    return-void
.end method

.method public setMaxDHGroupExchangeKeySize(I)V
    .locals 0

    .line 1427
    iput p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->maxDHGroupExchangeKeySize:I

    return-void
.end method

.method public setMaximumPacketLength(I)V
    .locals 0

    .line 1082
    iput p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->maximumPacketLength:I

    return-void
.end method

.method public setMaximumSocketsBacklogPerRemotelyForwardedConnection(I)V
    .locals 0

    .line 909
    iput p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->maximumSocketsBacklogPerRemotelyForwardedConnection:I

    return-void
.end method

.method public setMinDHGroupExchangeKeySize(I)V
    .locals 0

    .line 1372
    iput p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->minDHGroupExchangeKeySize:I

    return-void
.end method

.method public setPolicy(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->policies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPreferredCipherCS(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherCS:Ljava/lang/String;

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/SshContext;->setCipherPreferredPositionCS(Ljava/lang/String;I)V

    return-void

    .line 538
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreferredCipherCS([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->createNewOrdering([I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherCS:Ljava/lang/String;

    return-void
.end method

.method public setPreferredCipherCS([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 998
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->order([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherCS:Ljava/lang/String;

    return-void
.end method

.method public setPreferredCipherSC(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherSC:Ljava/lang/String;

    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/SshContext;->setCipherPreferredPositionSC(Ljava/lang/String;I)V

    return-void

    .line 608
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreferredCipherSC([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->createNewOrdering([I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherSC:Ljava/lang/String;

    return-void
.end method

.method public setPreferredCipherSC([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 978
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->order([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCipherSC:Ljava/lang/String;

    return-void
.end method

.method public setPreferredCompressionCS(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionsCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCompressionCS:Ljava/lang/String;

    return-void

    .line 795
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreferredCompressionSC(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionsSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefCompressionSC:Ljava/lang/String;

    return-void

    .line 825
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreferredDHGroupExchangeKeySize(I)V
    .locals 0

    .line 1419
    iput p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->preferredDHGroupExchangeKeySize:I

    return-void
.end method

.method public setPreferredKeyExchange(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefKeyExchange:Ljava/lang/String;

    const/4 v0, 0x0

    .line 873
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/SshContext;->setKeyExchangePreferredPosition(Ljava/lang/String;I)V

    return-void

    .line 875
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreferredKeyExchange([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->order([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefKeyExchange:Ljava/lang/String;

    return-void
.end method

.method public setPreferredMacCS(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacCS:Ljava/lang/String;

    const/4 v0, 0x0

    .line 671
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/SshContext;->setMacPreferredPositionCS(Ljava/lang/String;I)V

    return-void

    .line 673
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreferredMacCS([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->createNewOrdering([I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacSC:Ljava/lang/String;

    return-void
.end method

.method public setPreferredMacCS([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->order([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacCS:Ljava/lang/String;

    return-void
.end method

.method public setPreferredMacSC(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacSC:Ljava/lang/String;

    const/4 v0, 0x0

    .line 742
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/SshContext;->setMacPreferredPositionSC(Ljava/lang/String;I)V

    return-void

    .line 744
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreferredMacSC([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->createNewOrdering([I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacSC:Ljava/lang/String;

    return-void
.end method

.method public setPreferredMacSC([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->order([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacSC:Ljava/lang/String;

    return-void
.end method

.method public setPublicKeyPreferredPosition(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->publicKeys:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->changePositionofAlgorithm(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->prefMacCS:Ljava/lang/String;

    return-void
.end method

.method public setRemoteForwardingCancelKillsTunnels(Z)V
    .locals 0

    .line 695
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->killTunnelsOnRemoteForwardingCancel:Z

    return-void
.end method

.method public setSHA1SignaturesSupported(Z)V
    .locals 0

    .line 1439
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->sha1SignaturesSupported:Z

    return-void
.end method

.method public setSendIgnorePacketOnIdle(Z)V
    .locals 0

    .line 1395
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->sendIgnorePacketOnIdle:Z

    return-void
.end method

.method public setSocketConnectionFactory(Lcom/sshtools/synergy/nio/SocketConnectionFactory;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->socketConnectionFactory:Lcom/sshtools/synergy/nio/SocketConnectionFactory;

    return-void
.end method

.method public setSoftwareVersionComments(Ljava/lang/String;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext;->softwareVersionComments:Ljava/lang/String;

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 1341
    sget-object v0, Lcom/sshtools/synergy/ssh/SshContext;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 1342
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 1343
    sput-object v0, Lcom/sshtools/synergy/ssh/SshContext;->executor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public supportedCiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshCipher;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedCiphersSC()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshCipher;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->ciphersSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedCompressionsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/compression/SshCompression;",
            ">;"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionsCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedCompressionsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/compression/SshCompression;",
            ">;"
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->compressionsSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedKeyExchanges()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/synergy/ssh/components/SshKeyExchange<",
            "+",
            "Lcom/sshtools/synergy/ssh/SshContext;",
            ">;>;"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedMacsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshHmac;",
            ">;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macCS:Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedMacsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshHmac;",
            ">;"
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->macSC:Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext;->publicKeys:Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public supportedSignatures()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation

    .line 633
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->getSupportedSignatures()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    return-object v0
.end method
