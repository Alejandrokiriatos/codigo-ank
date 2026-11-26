.class public Lorg/apache/commons/codec/language/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    }
.end annotation


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String;

.field private static final SILENT_START:[Ljava/lang/String;

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field private maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x5

    .line 48
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "GN"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "KN"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "PN"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "WR"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "PS"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    const/16 v1, 0xa

    .line 50
    new-array v2, v1, [Ljava/lang/String;

    const-string v8, "L"

    aput-object v8, v2, v3

    const-string v9, "R"

    aput-object v9, v2, v4

    const-string v9, "N"

    aput-object v9, v2, v5

    const-string v10, "M"

    aput-object v10, v2, v6

    const-string v11, "B"

    aput-object v11, v2, v7

    const-string v12, "H"

    aput-object v12, v2, v0

    const-string v12, "F"

    const/4 v13, 0x6

    aput-object v12, v2, v13

    const-string v12, "V"

    const/4 v14, 0x7

    aput-object v12, v2, v14

    const-string v12, "W"

    const/16 v15, 0x8

    aput-object v12, v2, v15

    const-string v12, " "

    const/16 v16, 0x9

    aput-object v12, v2, v16

    sput-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    const/16 v2, 0xb

    .line 52
    new-array v2, v2, [Ljava/lang/String;

    const-string v12, "ES"

    aput-object v12, v2, v3

    const-string v12, "EP"

    aput-object v12, v2, v4

    const-string v12, "EB"

    aput-object v12, v2, v5

    const-string v12, "EL"

    aput-object v12, v2, v6

    const-string v12, "EY"

    aput-object v12, v2, v7

    const-string v12, "IB"

    aput-object v12, v2, v0

    const-string v12, "IL"

    aput-object v12, v2, v13

    const-string v12, "IN"

    aput-object v12, v2, v14

    const-string v12, "IE"

    aput-object v12, v2, v15

    const-string v12, "EI"

    aput-object v12, v2, v16

    const-string v12, "ER"

    aput-object v12, v2, v1

    sput-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 54
    new-array v1, v15, [Ljava/lang/String;

    aput-object v8, v1, v3

    const-string v2, "T"

    aput-object v2, v1, v4

    const-string v2, "K"

    aput-object v2, v1, v5

    const-string v2, "S"

    aput-object v2, v1, v6

    aput-object v9, v1, v7

    aput-object v10, v1, v0

    aput-object v11, v1, v13

    const-string v0, "Z"

    aput-object v0, v1, v14

    sput-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 60
    iput v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 892
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 893
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 896
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x1

    .line 782
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "CHIA"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-gt p2, v0, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, p2, -0x2

    .line 786
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, p2, -0x1

    .line 788
    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "ACH"

    aput-object v5, v4, v3

    const/4 v5, 0x3

    invoke-static {p1, v2, v5, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    const/4 v2, 0x2

    add-int/2addr p2, v2

    .line 791
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p2

    const/16 v4, 0x49

    if-eq p2, v4, :cond_4

    const/16 v4, 0x45

    if-ne p2, v4, :cond_5

    .line 792
    :cond_4
    new-array p2, v2, [Ljava/lang/String;

    const-string v2, "BACHER"

    aput-object v2, p2, v3

    const-string v2, "MACHER"

    aput-object v2, p2, v0

    const/4 v2, 0x6

    invoke-static {p1, v1, v2, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    return v0

    :cond_6
    return v3
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr p2, v1

    const/4 v2, 0x2

    .line 803
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "HARAC"

    aput-object v4, v3, v0

    const-string v4, "HARIS"

    aput-object v4, v3, v1

    const/4 v4, 0x5

    invoke-static {p1, p2, v4, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "HOR"

    aput-object v5, v3, v0

    const-string v5, "HYM"

    aput-object v5, v3, v1

    const-string v5, "HIA"

    aput-object v5, v3, v2

    const-string v2, "HEM"

    const/4 v5, 0x3

    aput-object v2, v3, v5

    invoke-static {p1, p2, v5, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 806
    :cond_1
    new-array p2, v1, [Ljava/lang/String;

    const-string v2, "CHORE"

    aput-object v2, p2, v0

    invoke-static {p1, v0, v4, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .locals 8

    const/4 v0, 0x2

    .line 817
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "VAN "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "VON "

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x4

    invoke-static {p1, v3, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v4, [Ljava/lang/String;

    const-string v5, "SCH"

    aput-object v5, v1, v3

    const/4 v5, 0x3

    invoke-static {p1, v3, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p2, -0x2

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "ORCHES"

    aput-object v7, v6, v3

    const-string v7, "ARCHIT"

    aput-object v7, v6, v4

    const-string v7, "ORCHID"

    aput-object v7, v6, v0

    const/4 v7, 0x6

    invoke-static {p1, v1, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p2, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const-string v7, "T"

    aput-object v7, v6, v3

    const-string v7, "S"

    aput-object v7, v6, v4

    invoke-static {p1, v1, v4, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v6, p2, -0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v7, "A"

    aput-object v7, v2, v3

    const-string v7, "O"

    aput-object v7, v2, v4

    const-string v7, "U"

    aput-object v7, v2, v0

    const-string v0, "E"

    aput-object v0, v2, v5

    invoke-static {p1, v6, v4, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    invoke-static {p1, v1, v4, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/2addr p2, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v4
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .locals 8

    .line 828
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const-string v2, "ALLE"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne p2, v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v7, "ILLO"

    aput-object v7, v1, v4

    const-string v7, "ILLA"

    aput-object v7, v1, v6

    aput-object v2, v1, v5

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    .line 831
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string v7, "AS"

    aput-object v7, v1, v4

    const-string v7, "OS"

    aput-object v7, v1, v6

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "A"

    aput-object v5, v1, v4

    const-string v5, "O"

    aput-object v5, v1, v6

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sub-int/2addr p2, v6

    new-array v0, v6, [Ljava/lang/String;

    aput-object v2, v0, v4

    invoke-static {p1, p2, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v4
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .locals 6

    add-int/lit8 v0, p2, 0x1

    .line 844
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, p2, -0x1

    .line 847
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "UMB"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x3

    invoke-static {p1, v1, v4, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    add-int/2addr p2, v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "ER"

    aput-object v2, v1, v5

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v3

    :cond_2
    return v5
.end method

.method protected static varargs contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    add-int/2addr p2, p1

    .line 918
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p2, v1, :cond_1

    .line 919
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 921
    array-length p1, p3

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v1, p3, p2

    .line 922
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private handleAEIOUY(Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1

    if-nez p2, :cond_0

    const/16 v0, 0x41

    .line 271
    invoke-virtual {p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method private handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 280
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    move-result v4

    const/16 v5, 0x4b

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    .line 281
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v1, v3, 0x2

    return v1

    :cond_0
    const/16 v4, 0x53

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v3, :cond_1

    .line 283
    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "CAESAR"

    aput-object v10, v9, v7

    const/4 v10, 0x6

    invoke-static {v1, v3, v10, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 284
    invoke-virtual {v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v1, v3, 0x2

    return v1

    .line 286
    :cond_1
    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "CH"

    aput-object v10, v9, v7

    invoke-static {v1, v3, v6, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 287
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    return v1

    .line 288
    :cond_2
    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "CZ"

    aput-object v10, v9, v7

    invoke-static {v1, v3, v6, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0x58

    if-eqz v9, :cond_3

    add-int/lit8 v9, v3, -0x2

    new-array v11, v8, [Ljava/lang/String;

    const-string v12, "WICZ"

    aput-object v12, v11, v7

    const/4 v12, 0x4

    invoke-static {v1, v9, v12, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 291
    invoke-virtual {v2, v4, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    add-int/lit8 v1, v3, 0x2

    return v1

    :cond_3
    add-int/lit8 v9, v3, 0x1

    .line 293
    new-array v11, v8, [Ljava/lang/String;

    const-string v12, "CIA"

    aput-object v12, v11, v7

    const/4 v13, 0x3

    invoke-static {v1, v9, v13, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 295
    invoke-virtual {v2, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v1, v3, 0x3

    return v1

    .line 297
    :cond_4
    new-array v11, v8, [Ljava/lang/String;

    const-string v14, "CC"

    aput-object v14, v11, v7

    invoke-static {v1, v3, v6, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-ne v3, v8, :cond_5

    invoke-virtual {v0, v1, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v11

    const/16 v14, 0x4d

    if-eq v11, v14, :cond_6

    .line 300
    :cond_5
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    return v1

    .line 301
    :cond_6
    new-array v11, v13, [Ljava/lang/String;

    const-string v14, "CK"

    aput-object v14, v11, v7

    const-string v14, "CG"

    aput-object v14, v11, v8

    const-string v14, "CQ"

    aput-object v14, v11, v6

    invoke-static {v1, v3, v6, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 302
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v1, v3, 0x2

    return v1

    .line 304
    :cond_7
    new-array v11, v13, [Ljava/lang/String;

    const-string v14, "CI"

    aput-object v14, v11, v7

    const-string v15, "CE"

    aput-object v15, v11, v8

    const-string v16, "CY"

    aput-object v16, v11, v6

    invoke-static {v1, v3, v6, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 306
    new-array v5, v13, [Ljava/lang/String;

    const-string v9, "CIO"

    aput-object v9, v5, v7

    const-string v7, "CIE"

    aput-object v7, v5, v8

    aput-object v12, v5, v6

    invoke-static {v1, v3, v13, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 307
    invoke-virtual {v2, v4, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 309
    :cond_8
    invoke-virtual {v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    add-int/lit8 v1, v3, 0x2

    return v1

    .line 313
    :cond_9
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 314
    new-array v2, v13, [Ljava/lang/String;

    const-string v4, " C"

    aput-object v4, v2, v7

    const-string v4, " Q"

    aput-object v4, v2, v8

    const-string v4, " G"

    aput-object v4, v2, v6

    invoke-static {v1, v9, v6, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/lit8 v1, v3, 0x3

    return v1

    .line 317
    :cond_a
    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "C"

    aput-object v4, v2, v7

    const-string v4, "K"

    aput-object v4, v2, v8

    const-string v4, "Q"

    aput-object v4, v2, v6

    invoke-static {v1, v9, v8, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-array v2, v6, [Ljava/lang/String;

    aput-object v15, v2, v7

    aput-object v14, v2, v8

    invoke-static {v1, v9, v6, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    add-int/lit8 v1, v3, 0x2

    return v1

    :cond_b
    return v9
.end method

.method private handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 7

    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x3

    .line 332
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "I"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "E"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "H"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {p1, v0, v5, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "HU"

    aput-object v3, v2, v4

    invoke-static {p1, v0, v6, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-ne p3, v5, :cond_0

    add-int/lit8 v0, p3, -0x1

    .line 335
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_1

    :cond_0
    add-int/lit8 v0, p3, -0x1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UCCEE"

    aput-object v3, v2, v4

    const-string v3, "UCCES"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    invoke-static {p1, v0, v3, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 338
    :cond_1
    const-string p1, "KS"

    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x58

    .line 341
    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    add-int/2addr p3, v1

    return p3

    :cond_3
    const/16 p1, 0x4b

    .line 345
    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    return v0
.end method

.method private handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 7

    const/4 v0, 0x1

    const/16 v1, 0x58

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x4b

    if-lez p3, :cond_0

    .line 356
    new-array v5, v0, [Ljava/lang/String;

    const-string v6, "CHAE"

    aput-object v6, v5, v2

    const/4 v6, 0x4

    invoke-static {p1, p3, v6, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 357
    invoke-virtual {p2, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    :goto_0
    add-int/2addr p3, v3

    return p3

    .line 359
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 361
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 365
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    :cond_2
    if-lez p3, :cond_4

    .line 369
    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "MC"

    aput-object v5, v0, v2

    invoke-static {p1, v2, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 370
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 372
    :cond_3
    invoke-virtual {p2, v1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 375
    :cond_4
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_1
    add-int/2addr p3, v3

    return p3
.end method

.method private handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 7

    const/4 v0, 0x1

    .line 385
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "DG"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p1, p3, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, p3, 0x2

    const/4 v4, 0x3

    .line 387
    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "I"

    aput-object v6, v5, v3

    const-string v3, "E"

    aput-object v3, v5, v0

    const-string v3, "Y"

    aput-object v3, v5, v2

    invoke-static {p1, v1, v0, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x4a

    .line 388
    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/2addr p3, v4

    return p3

    .line 392
    :cond_0
    const-string p1, "TK"

    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    return v1

    .line 395
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v4, "DT"

    aput-object v4, v1, v3

    const-string v3, "DD"

    aput-object v3, v1, v0

    invoke-static {p1, p3, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    const/16 v1, 0x54

    if-eqz p1, :cond_2

    .line 396
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/2addr p3, v2

    return p3

    .line 399
    :cond_2
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/2addr p3, v0

    return p3
.end method

.method private handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 11

    add-int/lit8 v0, p3, 0x1

    .line 410
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x48

    if-ne v1, v2, :cond_0

    .line 411
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p1

    return p1

    .line 412
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4e

    const/16 v3, 0x59

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v1, v2, :cond_3

    .line 413
    const-string v1, "N"

    const-string v2, "KN"

    if-ne p3, v6, :cond_1

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v7

    invoke-direct {p0, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez p4, :cond_1

    .line 414
    invoke-virtual {p2, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v7, p3, 0x2

    .line 415
    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "EY"

    aput-object v8, v6, v4

    invoke-static {p1, v7, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    if-eq p1, v3, :cond_2

    if-nez p4, :cond_2

    .line 417
    invoke-virtual {p2, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    :goto_0
    add-int/2addr p3, v5

    return p3

    .line 422
    :cond_3
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "LI"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p4, :cond_4

    .line 423
    const-string p1, "KL"

    const-string p4, "L"

    invoke-virtual {p2, p1, p4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr p3, v5

    return p3

    :cond_4
    const/16 p4, 0x4a

    const/16 v1, 0x4b

    if-nez p3, :cond_6

    .line 425
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    if-eq v2, v3, :cond_5

    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    invoke-static {p1, v0, v5, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 429
    :cond_5
    invoke-virtual {p2, v1, p4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    add-int/2addr p3, v5

    return p3

    .line 431
    :cond_6
    new-array v2, v6, [Ljava/lang/String;

    const-string v7, "ER"

    aput-object v7, v2, v4

    invoke-static {p1, v0, v5, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    const-string v7, "I"

    const-string v8, "E"

    const/4 v9, 0x3

    if-nez v2, :cond_7

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    if-ne v2, v3, :cond_8

    :cond_7
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "DANGER"

    aput-object v3, v2, v4

    const-string v3, "RANGER"

    aput-object v3, v2, v6

    const-string v3, "MANGER"

    aput-object v3, v2, v5

    const/4 v3, 0x6

    invoke-static {p1, v4, v3, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v2, p3, -0x1

    new-array v3, v5, [Ljava/lang/String;

    aput-object v8, v3, v4

    aput-object v7, v3, v6

    invoke-static {p1, v2, v6, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    new-array v3, v5, [Ljava/lang/String;

    const-string v10, "RGY"

    aput-object v10, v3, v4

    const-string v10, "OGY"

    aput-object v10, v3, v6

    invoke-static {p1, v2, v9, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 437
    invoke-virtual {p2, v1, p4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    add-int/2addr p3, v5

    return p3

    .line 439
    :cond_8
    new-array v2, v9, [Ljava/lang/String;

    aput-object v8, v2, v4

    aput-object v7, v2, v6

    const-string v3, "Y"

    aput-object v3, v2, v5

    invoke-static {p1, v0, v6, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    if-nez v2, :cond_b

    add-int/lit8 v2, p3, -0x1

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "AGGI"

    aput-object v8, v7, v4

    const-string v8, "OGGI"

    aput-object v8, v7, v6

    invoke-static {p1, v2, v3, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    .line 453
    :cond_9
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    const/16 p4, 0x47

    if-ne p1, p4, :cond_a

    add-int/2addr p3, v5

    .line 455
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    return p3

    .line 458
    :cond_a
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    return v0

    .line 442
    :cond_b
    :goto_1
    new-array v2, v5, [Ljava/lang/String;

    const-string v7, "VAN "

    aput-object v7, v2, v4

    const-string v7, "VON "

    aput-object v7, v2, v6

    invoke-static {p1, v4, v3, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SCH"

    aput-object v3, v2, v4

    invoke-static {p1, v4, v9, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ET"

    aput-object v3, v2, v4

    invoke-static {p1, v0, v5, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2

    .line 447
    :cond_c
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IER"

    aput-object v3, v2, v4

    invoke-static {p1, v0, v9, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 448
    invoke-virtual {p2, p4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_3

    .line 450
    :cond_d
    invoke-virtual {p2, p4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3

    .line 446
    :cond_e
    :goto_2
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_3
    add-int/2addr p3, v5

    return p3
.end method

.method private handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 11

    const/16 v0, 0x4b

    const/4 v1, 0x2

    if-lez p3, :cond_0

    add-int/lit8 v2, p3, -0x1

    .line 467
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 468
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/2addr p3, v1

    return p3

    :cond_0
    const/16 v2, 0x49

    if-nez p3, :cond_2

    add-int/2addr p3, v1

    .line 471
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    if-ne p1, v2, :cond_1

    const/16 p1, 0x4a

    .line 472
    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 474
    :cond_1
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    return p3

    .line 477
    :cond_2
    const-string v3, "D"

    const-string v4, "H"

    const-string v5, "B"

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-le p3, v8, :cond_3

    add-int/lit8 v9, p3, -0x2

    new-array v10, v7, [Ljava/lang/String;

    aput-object v5, v10, v6

    aput-object v4, v10, v8

    aput-object v3, v10, v1

    invoke-static {p1, v9, v8, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_3
    if-le p3, v1, :cond_4

    add-int/lit8 v9, p3, -0x3

    new-array v10, v7, [Ljava/lang/String;

    aput-object v5, v10, v6

    aput-object v4, v10, v8

    aput-object v3, v10, v1

    invoke-static {p1, v9, v8, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    if-le p3, v7, :cond_6

    add-int/lit8 v3, p3, -0x4

    new-array v9, v1, [Ljava/lang/String;

    aput-object v5, v9, v6

    aput-object v4, v9, v8

    invoke-static {p1, v3, v8, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    add-int/2addr p3, v1

    return p3

    :cond_6
    if-le p3, v1, :cond_7

    add-int/lit8 v3, p3, -0x1

    .line 483
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_7

    add-int/lit8 v3, p3, -0x3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "C"

    aput-object v5, v4, v6

    const-string v5, "G"

    aput-object v5, v4, v8

    const-string v5, "L"

    aput-object v5, v4, v1

    const-string v5, "R"

    aput-object v5, v4, v7

    const-string v5, "T"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-static {p1, v3, v8, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 p1, 0x46

    .line 486
    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    :cond_7
    if-lez p3, :cond_8

    add-int/lit8 v3, p3, -0x1

    .line 487
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    if-eq p1, v2, :cond_8

    .line 488
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :cond_8
    :goto_1
    add-int/2addr p3, v1

    return p3
.end method

.method private handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1

    if-eqz p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    .line 500
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x48

    .line 502
    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 p3, p3, 0x2

    return p3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    return p3
.end method

.method private handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 10

    const/4 v0, 0x1

    .line 516
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "JOSE"

    aput-object v3, v1, v2

    const/4 v4, 0x4

    invoke-static {p1, p3, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    const/16 v5, 0x20

    const-string v6, "SAN "

    const/16 v7, 0x48

    const/16 v8, 0x4a

    if-nez v1, :cond_7

    new-array v1, v0, [Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-static {p1, v2, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x2

    const/16 v6, 0x41

    if-nez p3, :cond_1

    .line 526
    new-array v9, v0, [Ljava/lang/String;

    aput-object v3, v9, v2

    invoke-static {p1, p3, v4, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 527
    invoke-virtual {p2, v8, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p3, -0x1

    .line 528
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p4, :cond_3

    add-int/lit8 p4, p3, 0x1

    invoke-virtual {p0, p1, p4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-eq v4, v6, :cond_2

    invoke-virtual {p0, p1, p4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p4

    const/16 v4, 0x4f

    if-ne p4, v4, :cond_3

    .line 530
    :cond_2
    invoke-virtual {p2, v8, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 531
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    sub-int/2addr p4, v0

    if-ne p3, p4, :cond_4

    .line 532
    invoke-virtual {p2, v8, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    :cond_4
    add-int/lit8 p4, p3, 0x1

    .line 533
    sget-object v4, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {p1, p4, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/String;

    const-string v4, "S"

    aput-object v4, p4, v2

    const-string v2, "K"

    aput-object v2, p4, v0

    const-string v2, "L"

    aput-object v2, p4, v1

    invoke-static {p1, v3, v0, p4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 535
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :cond_5
    :goto_0
    add-int/lit8 p2, p3, 0x1

    .line 538
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    if-ne p1, v8, :cond_6

    add-int/2addr p3, v1

    return p3

    :cond_6
    return p2

    :cond_7
    :goto_1
    if-nez p3, :cond_8

    add-int/lit8 p4, p3, 0x4

    .line 518
    invoke-virtual {p0, p1, p4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p4

    if-eq p4, v5, :cond_a

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-eq p4, v4, :cond_a

    new-array p4, v0, [Ljava/lang/String;

    aput-object v6, p4, v2

    invoke-static {p1, v2, v4, p4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    .line 522
    :cond_9
    invoke-virtual {p2, v8, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3

    .line 520
    :cond_a
    :goto_2
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_3
    add-int/2addr p3, v0

    return p3
.end method

.method private handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 551
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_1

    .line 552
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 553
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    add-int/lit8 p3, p3, 0x2

    return p3

    .line 560
    :cond_1
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    return v0
.end method

.method private handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 4

    add-int/lit8 v0, p3, 0x1

    .line 569
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x48

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    const/16 p1, 0x46

    .line 570
    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/2addr p3, v3

    return p3

    :cond_0
    const/16 v1, 0x50

    .line 573
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 574
    new-array p2, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "P"

    aput-object v2, p2, v1

    const-string v1, "B"

    const/4 v2, 0x1

    aput-object v1, p2, v2

    invoke-static {p1, v0, v2, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/2addr p3, v3

    return p3

    :cond_1
    return v0
.end method

.method private handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 6

    .line 584
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/16 v2, 0x52

    const/4 v3, 0x2

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    add-int/lit8 p4, p3, -0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string v4, "IE"

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-static {p1, p4, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/lit8 p4, p3, -0x4

    new-array v0, v3, [Ljava/lang/String;

    const-string v4, "ME"

    aput-object v4, v0, v5

    const-string v4, "MA"

    aput-object v4, v0, v1

    invoke-static {p1, p4, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 587
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    add-int/lit8 p2, p3, 0x1

    .line 591
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    if-ne p1, v2, :cond_1

    add-int/2addr p3, v3

    return p3

    :cond_1
    return p2
.end method

.method private handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 9

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x2

    .line 599
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "ISL"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "YSL"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x3

    invoke-static {p1, v0, v3, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr p3, v5

    return p3

    :cond_0
    const/16 v0, 0x58

    const/16 v2, 0x53

    if-nez p3, :cond_1

    .line 602
    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "SUGAR"

    aput-object v7, v6, v4

    const/4 v7, 0x5

    invoke-static {p1, p3, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 604
    invoke-virtual {p2, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    add-int/2addr p3, v5

    return p3

    .line 606
    :cond_1
    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "SH"

    aput-object v7, v6, v4

    invoke-static {p1, p3, v1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_3

    add-int/lit8 p4, p3, 0x1

    .line 607
    new-array v6, v7, [Ljava/lang/String;

    const-string v8, "HEIM"

    aput-object v8, v6, v4

    const-string v4, "HOEK"

    aput-object v4, v6, v5

    const-string v4, "HOLM"

    aput-object v4, v6, v1

    const-string v4, "HOLZ"

    aput-object v4, v6, v3

    invoke-static {p1, p4, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 609
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    add-int/2addr p3, v1

    return p3

    .line 614
    :cond_3
    new-array v6, v1, [Ljava/lang/String;

    const-string v8, "SIO"

    aput-object v8, v6, v4

    const-string v8, "SIA"

    aput-object v8, v6, v5

    invoke-static {p1, p3, v3, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    new-array v6, v5, [Ljava/lang/String;

    const-string v8, "SIAN"

    aput-object v8, v6, v4

    invoke-static {p1, p3, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_2

    .line 622
    :cond_4
    const-string p4, "Z"

    if-nez p3, :cond_5

    add-int/lit8 v6, p3, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "M"

    aput-object v8, v7, v4

    const-string v8, "N"

    aput-object v8, v7, v5

    const-string v8, "L"

    aput-object v8, v7, v1

    const-string v8, "W"

    aput-object v8, v7, v3

    invoke-static {p1, v6, v5, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    add-int/lit8 v3, p3, 0x1

    new-array v6, v5, [Ljava/lang/String;

    aput-object p4, v6, v4

    invoke-static {p1, v3, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 628
    :cond_6
    invoke-virtual {p2, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    add-int/lit8 p2, p3, 0x1

    .line 629
    new-array v0, v5, [Ljava/lang/String;

    aput-object p4, v0, v4

    invoke-static {p1, p2, v5, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    add-int/2addr p3, v1

    return p3

    :cond_7
    return p2

    .line 630
    :cond_8
    new-array v0, v5, [Ljava/lang/String;

    const-string v6, "SC"

    aput-object v6, v0, v4

    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 631
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p1

    return p1

    .line 633
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    if-ne p3, v0, :cond_a

    add-int/lit8 v0, p3, -0x2

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "AI"

    aput-object v7, v6, v4

    const-string v7, "OI"

    aput-object v7, v6, v5

    invoke-static {p1, v0, v1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 635
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    goto :goto_1

    .line 637
    :cond_a
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 639
    :goto_1
    new-array p2, v1, [Ljava/lang/String;

    const-string v0, "S"

    aput-object v0, p2, v4

    aput-object p4, p2, v5

    invoke-static {p1, v3, v5, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    add-int/2addr p3, v1

    return p3

    :cond_b
    return v3

    :cond_c
    :goto_2
    if-eqz p4, :cond_d

    .line 617
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_3

    .line 619
    :cond_d
    invoke-virtual {p2, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    :goto_3
    add-int/2addr p3, v3

    return p3
.end method

.method private handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 12

    add-int/lit8 v0, p3, 0x2

    .line 648
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x48

    const/16 v3, 0x53

    const-string v4, "SK"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, p3, 0x3

    const/4 v1, 0x6

    .line 650
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "OO"

    aput-object v2, v1, v5

    const-string v2, "ER"

    aput-object v2, v1, v6

    const-string v9, "EN"

    aput-object v9, v1, v8

    const-string v10, "UY"

    aput-object v10, v1, v7

    const/4 v10, 0x4

    const-string v11, "ED"

    aput-object v11, v1, v10

    const/4 v10, 0x5

    const-string v11, "EM"

    aput-object v11, v1, v10

    invoke-static {p1, v0, v8, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    new-array v1, v8, [Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v9, v1, v6

    invoke-static {p1, v0, v8, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 654
    const-string p1, "X"

    invoke-virtual {p2, p1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_0
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x58

    if-nez p3, :cond_2

    .line 659
    invoke-virtual {p0, p1, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    const/16 v1, 0x57

    if-eq p1, v1, :cond_2

    .line 660
    invoke-virtual {p2, v0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 662
    :cond_2
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 665
    :cond_3
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "I"

    aput-object v2, v1, v5

    const-string v2, "E"

    aput-object v2, v1, v6

    const-string v2, "Y"

    aput-object v2, v1, v8

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 666
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 668
    :cond_4
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    :goto_0
    add-int/2addr p3, v7

    return p3
.end method

.method private handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8

    const/4 v0, 0x1

    .line 677
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "TION"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x4

    invoke-static {p1, p3, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0x58

    const/4 v5, 0x3

    if-eqz v1, :cond_0

    .line 678
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    add-int/2addr p3, v5

    return p3

    :cond_0
    const/4 v1, 0x2

    .line 680
    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "TIA"

    aput-object v7, v6, v3

    const-string v7, "TCH"

    aput-object v7, v6, v0

    invoke-static {p1, p3, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 681
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 683
    :cond_1
    new-array v4, v0, [Ljava/lang/String;

    const-string v6, "TH"

    aput-object v6, v4, v3

    invoke-static {p1, p3, v1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    const/16 v6, 0x54

    if-nez v4, :cond_4

    new-array v4, v0, [Ljava/lang/String;

    const-string v7, "TTH"

    aput-object v7, v4, v3

    invoke-static {p1, p3, v5, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 694
    :cond_2
    invoke-virtual {p2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 p2, p3, 0x1

    .line 695
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "T"

    aput-object v4, v2, v3

    const-string v3, "D"

    aput-object v3, v2, v0

    invoke-static {p1, p2, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/2addr p3, v1

    return p3

    :cond_3
    return p2

    :cond_4
    :goto_1
    add-int/2addr p3, v1

    .line 684
    new-array v4, v1, [Ljava/lang/String;

    const-string v7, "OM"

    aput-object v7, v4, v3

    const-string v7, "AM"

    aput-object v7, v4, v0

    invoke-static {p1, p3, v1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "VAN "

    aput-object v4, v1, v3

    const-string v4, "VON "

    aput-object v4, v1, v0

    invoke-static {p1, v3, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCH"

    aput-object v1, v0, v3

    invoke-static {p1, v3, v5, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 p1, 0x30

    .line 690
    invoke-virtual {p2, p1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3

    .line 688
    :cond_6
    :goto_2
    invoke-virtual {p2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_3
    return p3
.end method

.method private handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 9

    const/4 v0, 0x1

    .line 704
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "WR"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p1, p3, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x52

    .line 706
    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/2addr p3, v2

    return p3

    :cond_0
    const/16 v1, 0x46

    if-nez p3, :cond_3

    add-int/lit8 v4, p3, 0x1

    .line 709
    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v5

    if-nez v5, :cond_1

    new-array v5, v0, [Ljava/lang/String;

    const-string v6, "WH"

    aput-object v6, v5, v3

    invoke-static {p1, p3, v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 711
    :cond_1
    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result p1

    const/16 p3, 0x41

    if-eqz p1, :cond_2

    .line 713
    invoke-virtual {p2, p3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :goto_0
    return v4

    .line 719
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    if-ne p3, v4, :cond_4

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_4
    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "EWSKI"

    aput-object v7, v6, v3

    const-string v7, "EWSKY"

    aput-object v7, v6, v0

    const-string v7, "OWSKI"

    aput-object v7, v6, v2

    const-string v7, "OWSKY"

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const/4 v7, 0x5

    invoke-static {p1, v4, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    new-array v4, v0, [Ljava/lang/String;

    const-string v6, "SCH"

    aput-object v6, v4, v3

    invoke-static {p1, v3, v8, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 725
    :cond_5
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "WICZ"

    aput-object v2, v1, v3

    const-string v2, "WITZ"

    aput-object v2, v1, v0

    invoke-static {p1, p3, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 727
    const-string p1, "TS"

    const-string v0, "FX"

    invoke-virtual {p2, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr p3, v5

    return p3

    :cond_6
    add-int/2addr p3, v0

    return p3

    .line 723
    :cond_7
    :goto_1
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    add-int/2addr p3, v0

    return p3
.end method

.method private handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6

    const/4 v0, 0x1

    if-nez p3, :cond_0

    const/16 p1, 0x53

    .line 741
    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/2addr p3, v0

    return p3

    .line 744
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p3, v1, :cond_1

    add-int/lit8 v1, p3, -0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "IAU"

    aput-object v5, v4, v2

    const-string v5, "EAU"

    aput-object v5, v4, v0

    const/4 v5, 0x3

    invoke-static {p1, v1, v5, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p3, -0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "AU"

    aput-object v5, v4, v2

    const-string v5, "OU"

    aput-object v5, v4, v0

    invoke-static {p1, v1, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 748
    :cond_1
    const-string v1, "KS"

    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p2, p3, 0x1

    .line 750
    new-array v1, v3, [Ljava/lang/String;

    const-string v4, "C"

    aput-object v4, v1, v2

    const-string v2, "X"

    aput-object v2, v1, v0

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/2addr p3, v3

    return p3

    :cond_3
    return p2
.end method

.method private handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 5

    add-int/lit8 v0, p3, 0x1

    .line 760
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x48

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    const/16 p1, 0x4a

    .line 762
    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/2addr p3, v3

    return p3

    :cond_0
    const/4 v1, 0x3

    .line 765
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "ZO"

    aput-object v4, v1, v2

    const-string v2, "ZI"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "ZA"

    aput-object v2, v1, v3

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_1

    if-lez p3, :cond_1

    add-int/lit8 p4, p3, -0x1

    invoke-virtual {p0, p1, p4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p4

    const/16 v1, 0x54

    if-eq p4, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p4, 0x53

    .line 769
    invoke-virtual {p2, p4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 767
    :cond_2
    :goto_0
    const-string p4, "S"

    const-string v1, "TS"

    invoke-virtual {p2, p4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    const/16 p2, 0x5a

    if-ne p1, p2, :cond_3

    add-int/2addr p3, v3

    return p3

    :cond_3
    return v0
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .locals 5

    .line 876
    sget-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 877
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x57

    .line 858
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_1

    const-string v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_1

    const-string v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isVowel(C)Z
    .locals 1

    .line 866
    const-string v0, "AEIOUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .locals 1

    if-ltz p2, :cond_1

    .line 905
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 908
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 87
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 92
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    move-result v0

    .line 93
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    move-result v1

    .line 95
    new-instance v2, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V

    .line 97
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_5

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc7

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd1

    const/16 v5, 0x4e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x4b

    const/16 v6, 0x46

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 182
    :pswitch_0
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto :goto_0

    .line 176
    :pswitch_2
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto :goto_0

    .line 172
    :pswitch_3
    invoke-virtual {v2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v3, v1, 0x1

    .line 173
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .line 169
    :pswitch_4
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto :goto_0

    .line 166
    :pswitch_5
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    goto :goto_0

    .line 163
    :pswitch_6
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    goto :goto_0

    .line 159
    :pswitch_7
    invoke-virtual {v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v3, v1, 0x1

    .line 160
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x51

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 156
    :pswitch_8
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto :goto_0

    .line 147
    :pswitch_9
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v3, v1, 0x1

    .line 148
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v5, :cond_1

    goto :goto_1

    :pswitch_a
    const/16 v3, 0x4d

    .line 143
    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 144
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 140
    :pswitch_b
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto/16 :goto_0

    .line 136
    :pswitch_c
    invoke-virtual {v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v3, v1, 0x1

    .line 137
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    .line 133
    :pswitch_d
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    goto/16 :goto_0

    .line 130
    :pswitch_e
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto/16 :goto_0

    .line 127
    :pswitch_f
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    goto/16 :goto_0

    .line 123
    :pswitch_10
    invoke-virtual {v2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v3, v1, 0x1

    .line 124
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v6, :cond_1

    goto :goto_1

    .line 120
    :pswitch_11
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto/16 :goto_0

    .line 117
    :pswitch_12
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto/16 :goto_0

    :pswitch_13
    const/16 v3, 0x50

    .line 108
    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    add-int/lit8 v3, v1, 0x1

    .line 109
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x42

    if-ne v4, v5, :cond_1

    goto/16 :goto_1

    .line 105
    :pswitch_14
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleAEIOUY(Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    goto/16 :goto_0

    .line 152
    :cond_2
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    :cond_3
    const/16 v3, 0x53

    .line 113
    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz p2, :cond_6

    .line 190
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_14
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_14
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_14
        :pswitch_0
    .end packed-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 203
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 206
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 204
    :cond_0
    new-instance p1, Lorg/apache/commons/codec/EncoderException;

    const-string v0, "DoubleMetaphone encode parameter is not of type String"

    invoke-direct {p1, v0}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 217
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaxCodeLen()I
    .locals 1

    .line 253
    iget v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 245
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/commons/codec/binary/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public setMaxCodeLen(I)V
    .locals 0

    .line 261
    iput p1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return-void
.end method
