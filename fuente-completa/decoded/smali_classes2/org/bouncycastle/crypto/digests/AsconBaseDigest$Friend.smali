.class public Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/AsconBaseDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Friend"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;->INSTANCE:Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;->INSTANCE:Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;

    return-object v0
.end method
