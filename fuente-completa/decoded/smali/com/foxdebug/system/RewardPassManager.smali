.class public Lcom/foxdebug/system/RewardPassManager;
.super Ljava/lang/Object;
.source "RewardPassManager.java"


# static fields
.field private static final ADS_PREFS_FILENAME:Ljava/lang/String; = "ads"

.field private static final KEY_REWARD_STATE:Ljava/lang/String; = "reward_state"

.field private static final MAX_ACTIVE_PASS_MS:J = 0x2255100L

.field private static final MAX_REDEMPTIONS_PER_DAY:I = 0x3

.field private static final ONE_HOUR_MS:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemRewardPass"


# instance fields
.field private final adsPrefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/system/RewardPassManager;->random:Ljava/util/Random;

    .line 25
    new-instance v0, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v1, "ads"

    invoke-direct {v0, p1, v1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/foxdebug/system/RewardPassManager;->adsPrefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    return-void
.end method

.method private buildRewardStatus(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 142
    const-string v3, "adFreeUntil"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 143
    const-string v8, "redemptionsToday"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    sub-long v11, v6, v1

    .line 144
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    rsub-int/lit8 v13, v10, 0x3

    .line 145
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 147
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 148
    invoke-virtual {v14, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 149
    const-string v3, "lastExpiredRewardUntil"

    move v15, v10

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v14, v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    cmp-long v1, v6, v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 150
    :goto_0
    const-string v3, "isActive"

    invoke-virtual {v14, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 151
    const-string v1, "remainingMs"

    invoke-virtual {v14, v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move v1, v15

    .line 152
    invoke-virtual {v14, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    const-string v1, "remainingRedemptions"

    invoke-virtual {v14, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string v1, "maxRedemptionsPerDay"

    const/4 v3, 0x3

    invoke-virtual {v14, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    const-string v1, "maxActivePassMs"

    const-wide/32 v6, 0x2255100

    invoke-virtual {v14, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 156
    const-string v1, "expiryNoticePendingUntil"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v8, "hasPendingExpiryNotice"

    invoke-virtual {v14, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 157
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v14, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-lez v13, :cond_2

    cmp-long v0, v11, v6

    if-gez v0, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 160
    :goto_2
    const-string v0, "canRedeem"

    invoke-virtual {v14, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 161
    const-string v0, "redeemDisabledReason"

    move-object/from16 v1, p0

    invoke-direct {v1, v13, v11, v12}, Lcom/foxdebug/system/RewardPassManager;->getRedeemDisabledReason(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v14
.end method

.method private defaultRewardState()Lorg/json/JSONObject;
    .locals 4

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 93
    :try_start_0
    const-string v1, "adFreeUntil"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 94
    const-string v1, "lastExpiredRewardUntil"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 95
    const-string v1, "expiryNoticePendingUntil"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    const-string v1, "redemptionDay"

    invoke-direct {p0}, Lcom/foxdebug/system/RewardPassManager;->getTodayKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v1, "redemptionsToday"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private getRedeemDisabledReason(IJ)Ljava/lang/String;
    .locals 2

    if-gtz p1, :cond_0

    .line 167
    const-string p1, "Daily limit reached. You can redeem up to 3 rewards per day."

    return-object p1

    :cond_0
    const-wide/32 v0, 0x2255100

    cmp-long p1, p2, v0

    if-ltz p1, :cond_1

    .line 170
    const-string p1, "You already have the maximum 10 hours of ad-free time active."

    return-object p1

    .line 172
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getTodayKey()Ljava/lang/String;
    .locals 3

    .line 187
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadRewardState()Lorg/json/JSONObject;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/foxdebug/system/RewardPassManager;->adsPrefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v1, "reward_state"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/foxdebug/system/RewardPassManager;->mergeRewardState(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 85
    const-string v1, "SystemRewardPass"

    const-string v2, "Failed to parse reward state, resetting."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    invoke-direct {p0}, Lcom/foxdebug/system/RewardPassManager;->defaultRewardState()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/foxdebug/system/RewardPassManager;->defaultRewardState()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private mergeRewardState(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 10

    .line 104
    const-string v0, "redemptionsToday"

    const-string v1, "redemptionDay"

    const-string v2, "expiryNoticePendingUntil"

    const-string v3, "lastExpiredRewardUntil"

    const-string v4, "adFreeUntil"

    invoke-direct {p0}, Lcom/foxdebug/system/RewardPassManager;->defaultRewardState()Lorg/json/JSONObject;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 106
    :try_start_0
    invoke-virtual {p1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v5, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 107
    invoke-virtual {p1, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v5, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {p1, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v5, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 109
    invoke-direct {p0}, Lcom/foxdebug/system/RewardPassManager;->getTodayKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v5
.end method

.method private resolveRewardDuration(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 176
    const-string v0, "quick"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/32 v1, 0x36ee80

    if-eqz v0, :cond_0

    return-wide v1

    .line 179
    :cond_0
    const-string v0, "focus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/foxdebug/system/RewardPassManager;->random:Ljava/util/Random;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    int-to-long v3, p1

    mul-long/2addr v3, v1

    return-wide v3

    .line 183
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Unknown reward offer."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private saveRewardState(Lorg/json/JSONObject;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/foxdebug/system/RewardPassManager;->adsPrefManager:Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;

    const-string v1, "reward_state"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/foxdebug/acode/rk/auth/EncryptedPreferenceManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private syncRewardState(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/foxdebug/system/RewardPassManager;->getTodayKey()Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "redemptionDay"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v0, "redemptionsToday"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    :cond_0
    const-string v0, "adFreeUntil"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v3, v1

    if-lez v7, :cond_2

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    .line 130
    const-string v5, "expiryNoticePendingUntil"

    invoke-virtual {p1, v5, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-eqz v6, :cond_1

    .line 131
    invoke-virtual {p1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 133
    :cond_1
    const-string v5, "lastExpiredRewardUntil"

    invoke-virtual {p1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 134
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    return-object p1
.end method


# virtual methods
.method public getRewardStatus()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/foxdebug/system/RewardPassManager;->loadRewardState()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/foxdebug/system/RewardPassManager;->syncRewardState(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 30
    invoke-direct {p0, v0}, Lcom/foxdebug/system/RewardPassManager;->buildRewardStatus(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 32
    const-string v2, "hasPendingExpiryNotice"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const-string v2, "expiryNoticePendingUntil"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    :cond_0
    invoke-direct {p0, v0}, Lcom/foxdebug/system/RewardPassManager;->saveRewardState(Lorg/json/JSONObject;)V

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public redeemReward(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 41
    invoke-direct {v0}, Lcom/foxdebug/system/RewardPassManager;->loadRewardState()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/foxdebug/system/RewardPassManager;->syncRewardState(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    .line 42
    const-string v3, "redemptionsToday"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 44
    const-string v6, "adFreeUntil"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    sub-long v11, v9, v4

    .line 45
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    const/4 v13, 0x3

    if-ge v2, v13, :cond_1

    const-wide/32 v13, 0x2255100

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    .line 57
    invoke-direct/range {p0 .. p1}, Lcom/foxdebug/system/RewardPassManager;->resolveRewardDuration(Ljava/lang/String;)J

    move-result-wide v11

    .line 58
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    move-wide v15, v13

    add-long v13, v9, v11

    add-long/2addr v4, v15

    .line 59
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    sub-long v9, v4, v9

    .line 60
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 62
    invoke-virtual {v1, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 63
    const-string v4, "lastExpiredRewardUntil"

    invoke-virtual {v1, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 64
    const-string v4, "expiryNoticePendingUntil"

    invoke-virtual {v1, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    const-string v4, "redemptionDay"

    invoke-direct {v0}, Lcom/foxdebug/system/RewardPassManager;->getTodayKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    .line 66
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    invoke-direct {v0, v1}, Lcom/foxdebug/system/RewardPassManager;->saveRewardState(Lorg/json/JSONObject;)V

    .line 69
    invoke-direct {v0, v1}, Lcom/foxdebug/system/RewardPassManager;->buildRewardStatus(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    const-string v2, "grantedDurationMs"

    invoke-virtual {v1, v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 71
    const-string v2, "appliedDurationMs"

    invoke-virtual {v1, v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 72
    const-string v2, "offerId"

    move-object/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 54
    :cond_0
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "You already have the maximum 10 hours of ad-free time active."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_1
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Daily limit reached. You can redeem up to 3 rewards per day."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
