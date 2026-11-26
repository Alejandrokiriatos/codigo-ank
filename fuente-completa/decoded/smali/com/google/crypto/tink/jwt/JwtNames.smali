.class final Lcom/google/crypto/tink/jwt/JwtNames;
.super Ljava/lang/Object;
.source "JwtNames.java"


# static fields
.field static final CLAIM_AUDIENCE:Ljava/lang/String; = "aud"

.field static final CLAIM_EXPIRATION:Ljava/lang/String; = "exp"

.field static final CLAIM_ISSUED_AT:Ljava/lang/String; = "iat"

.field static final CLAIM_ISSUER:Ljava/lang/String; = "iss"

.field static final CLAIM_JWT_ID:Ljava/lang/String; = "jti"

.field static final CLAIM_NOT_BEFORE:Ljava/lang/String; = "nbf"

.field static final CLAIM_SUBJECT:Ljava/lang/String; = "sub"

.field static final HEADER_ALGORITHM:Ljava/lang/String; = "alg"

.field static final HEADER_CRITICAL:Ljava/lang/String; = "crit"

.field static final HEADER_KEY_ID:Ljava/lang/String; = "kid"

.field static final HEADER_TYPE:Ljava/lang/String; = "typ"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isRegisteredName(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 53
    const-string v0, "iss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sub"

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "aud"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "exp"

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nbf"

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "iat"

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jti"

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static validate(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtNames;->isRegisteredName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "claim \'%s\' is invalid because it\'s a registered name; use the corresponding setter method."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 45
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
