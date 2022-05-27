contract main {




// =====================  Runtime code  =====================


#
#  - settle()
#  - getSettleResult()
#  - getExpectedAvgPrice()
#  - bidderClaim(address arg1, bytes arg2)
#  - cancel(address arg1, uint256 arg2, bytes arg3)
#
const version = '', 0


uint32 stor0;
address _OWNER_;
uint256 stor0;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint8 stor1; offset 176
uint8 stor1; offset 184
uint8 stor1; offset 192
uint128 stor1; offset 184
uint128 stor1; offset 176
address _NEW_OWNER_;
uint256 _PHASE_BID_STARTTIME_;
uint256 _PHASE_BID_ENDTIME_;
uint256 _PHASE_CALM_ENDTIME_;
uint256 _SETTLED_TIME_;
uint8 stor6;
address _BASE_TOKEN_Address; offset 8
address _QUOTE_TOKEN_Address;
uint256 _TOTAL_BASE_;
uint256 _POOL_QUOTE_CAP_;
uint256 _QUOTE_RESERVE_;
uint256 _UNUSED_BASE_;
uint256 _UNUSED_QUOTE_;
uint256 _TOTAL_SHARES_;
mapping of uint256 shares;
mapping of uint8 stor15;
address _POOL_FACTORY_Address;
address _POOL_Address;
uint256 sub_c548b575;
uint256 _AVG_SETTLED_PRICE_;
uint32 stor20;
address _MAINTAINER_Address;
uint256 stor20;
address _MT_FEE_RATE_MODEL_Address;
address _BIDDER_PERMISSION_Address;
uint256 _K_;
uint256 _I_;
uint256 _TOTAL_LP_AMOUNT_;
uint256 _FREEZE_DURATION_;
uint256 _VESTING_DURATION_;
uint256 _CLIFF_RATE_;
uint256 sub_dc208dcc;
uint256 sub_2a33186e;
uint256 sub_1616a237;
mapping of uint256 sub_d7965055;

function _OWNER_() {
    return address(_OWNER_)
}

function sub_1616a237(?) {
    return sub_1616a237
}

function _UNUSED_QUOTE_() {
    return _UNUSED_QUOTE_
}

function _POOL_() {
    return _POOL_Address
}

function _CLIFF_RATE_() {
    return _CLIFF_RATE_
}

function sub_2a33186e(?) {
    return sub_2a33186e
}

function _IS_OPEN_TWAP_() {
    return bool(uint8(stor1.field_176))
}

function _VESTING_DURATION_() {
    return _VESTING_DURATION_
}

function _MAINTAINER_() {
    return address(_MAINTAINER_Address)
}

function _UNUSED_BASE_() {
    return _UNUSED_BASE_
}

function _BASE_TOKEN_() {
    return _BASE_TOKEN_Address
}

function _SETTLED_TIME_() {
    return _SETTLED_TIME_
}

function _TOTAL_BASE_() {
    return _TOTAL_BASE_
}

function _POOL_QUOTE_CAP_() {
    return _POOL_QUOTE_CAP_
}

function _PHASE_BID_STARTTIME_() {
    return _PHASE_BID_STARTTIME_
}

function sub_747e7fda(?) {
    return bool(uint8(stor1.field_184))
}

function _BIDDER_PERMISSION_() {
    return _BIDDER_PERMISSION_Address
}

function _NEW_OWNER_() {
    return _NEW_OWNER_
}

function _POOL_FACTORY_() {
    return _POOL_FACTORY_Address
}

function sub_9f91fa62(?) {
    return bool(uint8(stor1.field_192))
}

function _TOTAL_LP_AMOUNT_() {
    return _TOTAL_LP_AMOUNT_
}

function sub_acc4f49d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor15[arg1])
}

function _QUOTE_RESERVE_() {
    return _QUOTE_RESERVE_
}

function _TOTAL_SHARES_() {
    return _TOTAL_SHARES_
}

function _AVG_SETTLED_PRICE_() {
    return _AVG_SETTLED_PRICE_
}

function sub_c548b575(?) {
    return sub_c548b575
}

function _PHASE_CALM_ENDTIME_() {
    return _PHASE_CALM_ENDTIME_
}

function _FREEZE_DURATION_() {
    return _FREEZE_DURATION_
}

function _QUOTE_TOKEN_() {
    return _QUOTE_TOKEN_Address
}

function sub_d7965055(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d7965055[arg1]
}

function sub_dc208dcc(?) {
    return sub_dc208dcc
}

function _PHASE_BID_ENDTIME_() {
    return _PHASE_BID_ENDTIME_
}

function _SETTLED_() {
    return bool(stor6)
}

function _K_() {
    return _K_
}

function getShares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function _MT_FEE_RATE_MODEL_() {
    return _MT_FEE_RATE_MODEL_Address
}

function _I_() {
    return _I_
}

function _fallback() payable {
    revert
}

function claimOwnership() {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(address(_OWNER_), _NEW_OWNER_);
    address(_OWNER_) = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function initOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_160):
        revert with 0, 'DODO_INITIALIZED'
    uint8(stor1.field_160) = 1
    address(_OWNER_) = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(address(_OWNER_), arg1);
    _NEW_OWNER_ = arg1
}

function sub_eaf36bc8(?) {
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    if block.timestamp >= _PHASE_BID_STARTTIME_:
        revert with 0, 'CP_ALREADY_STARTED'
    uint8(stor1.field_192) = 1
    _TOTAL_BASE_ = 0
    require ext_code.size(_BASE_TOKEN_Address)
    staticcall _BASE_TOKEN_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(_BASE_TOKEN_Address)
    call _BASE_TOKEN_Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(_OWNER_), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function emergencySettle() {
    if uint8(stor1.field_192):
        revert with 0, 'FORCE_STOP'
    if block.timestamp < _PHASE_CALM_ENDTIME_:
        revert with 0, 'NOT_PHASE_EXE'
    if uint8(stor1.field_168):
        revert with 0, 'REENTRANT'
    uint8(stor1.field_168) = 1
    if _PHASE_CALM_ENDTIME_ + (168 * 24 * 3600) < _PHASE_CALM_ENDTIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _PHASE_CALM_ENDTIME_ + (168 * 24 * 3600):
        revert with 0, 'NOT_EMERGENCY'
    if stor6:
        revert with 0, 'ALREADY_SETTLED'
    stor6 = 1
    _SETTLED_TIME_ = block.timestamp
    require ext_code.size(_QUOTE_TOKEN_Address)
    staticcall _QUOTE_TOKEN_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _UNUSED_QUOTE_ = ext_call.return_data[0]
    uint8(stor1.field_168) = 0
}

function sub_69001fae(?) {
    require calldata.size - 4 >= 32
    if not stor6:
        revert with 0, 'CLAIM_FREEZED'
    if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < sub_dc208dcc + _SETTLED_TIME_:
        revert with 0, 'CLAIM_FREEZED'
    if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if sub_dc208dcc + _SETTLED_TIME_ > arg1:
        revert with 0, 'SUB_ERROR'
    if arg1 - sub_dc208dcc - _SETTLED_TIME_ >= sub_2a33186e:
        return 0
    if arg1 - sub_dc208dcc - _SETTLED_TIME_ > sub_2a33186e:
        revert with 0, 'SUB_ERROR'
    if sub_1616a237 > 10^18:
        revert with 0, 'SUB_ERROR'
    if not -sub_1616a237 + 10^18:
        if sub_2a33186e <= 0:
            revert with 0, 'DIVIDING_ERROR'
        if sub_2a33186e:
            return (0 / sub_2a33186e)
    else:
        if (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * arg1) + (sub_1616a237 * arg1) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / -sub_1616a237 + 10^18 != sub_2a33186e - arg1 + sub_dc208dcc + _SETTLED_TIME_:
            revert with 0, 'MUL_ERROR'
        if sub_2a33186e <= 0:
            revert with 0, 'DIVIDING_ERROR'
        if sub_2a33186e:
            return ((10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * arg1) + (sub_1616a237 * arg1) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e)
    ('iszero', ('stor', ('name', 'sub_2a33186e', 30)))
    revert
}

function getRemainingLPRatio(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ > arg1:
        revert with 0, 'SUB_ERROR'
    if arg1 - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
        return 0
    if arg1 - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
        revert with 0, 'SUB_ERROR'
    if _CLIFF_RATE_ > 10^18:
        revert with 0, 'SUB_ERROR'
    if not -_CLIFF_RATE_ + 10^18:
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        if _VESTING_DURATION_:
            return (0 / _VESTING_DURATION_)
    else:
        if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * arg1) + (_CLIFF_RATE_ * arg1) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - arg1 + _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'MUL_ERROR'
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        if _VESTING_DURATION_:
            return ((10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * arg1) + (_CLIFF_RATE_ * arg1) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_)
    ('iszero', ('stor', ('name', '_VESTING_DURATION_', 27)))
    revert
}

function sub_5167c543(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 4).length != 7:
        revert with 0, 'LIST_LENGTH_WRONG'
    require 0 < ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if uint8(stor1.field_160):
        revert with 0, 'DODO_INITIALIZED'
    uint8(stor1.field_160) = 1
    address(_OWNER_) = address(('cd', 4)[0])
    require 1 < ('cd', 4).length
    require ('cd', 4)[1] == address(('cd', 4)[1])
    address(_MAINTAINER_Address) = address(('cd', 4)[1])
    require 2 < ('cd', 4).length
    require ('cd', 4)[2] == address(('cd', 4)[2])
    _BASE_TOKEN_Address = address(('cd', 4)[2])
    require 3 < ('cd', 4).length
    require ('cd', 4)[3] == address(('cd', 4)[3])
    _QUOTE_TOKEN_Address = address(('cd', 4)[3])
    require 4 < ('cd', 4).length
    require ('cd', 4)[4] == address(('cd', 4)[4])
    _BIDDER_PERMISSION_Address = address(('cd', 4)[4])
    require 5 < ('cd', 4).length
    require ('cd', 4)[5] == address(('cd', 4)[5])
    _MT_FEE_RATE_MODEL_Address = address(('cd', 4)[5])
    require 6 < ('cd', 4).length
    require ('cd', 4)[6] == address(('cd', 4)[6])
    _POOL_FACTORY_Address = address(('cd', 4)[6])
    if ('cd', 36).length != 7:
        revert with 0, 'LIST_LENGTH_WRONG'
    require 0 < ('cd', 36).length
    _PHASE_BID_STARTTIME_ = ('cd', 36)[0]
    require 1 < ('cd', 36).length
    if ('cd', 36)[1] + _PHASE_BID_STARTTIME_ < _PHASE_BID_STARTTIME_:
        revert with 0, 'ADD_ERROR'
    _PHASE_BID_ENDTIME_ = ('cd', 36)[1] + _PHASE_BID_STARTTIME_
    require 2 < ('cd', 36).length
    if ('cd', 36)[2] + _PHASE_BID_ENDTIME_ < _PHASE_BID_ENDTIME_:
        revert with 0, 'ADD_ERROR'
    _PHASE_CALM_ENDTIME_ = ('cd', 36)[2] + _PHASE_BID_ENDTIME_
    require 3 < ('cd', 36).length
    _FREEZE_DURATION_ = ('cd', 36)[3]
    require 4 < ('cd', 36).length
    _VESTING_DURATION_ = ('cd', 36)[4]
    require 5 < ('cd', 36).length
    sub_dc208dcc = ('cd', 36)[5]
    require 6 < ('cd', 36).length
    sub_2a33186e = ('cd', 36)[6]
    if block.timestamp > _PHASE_BID_STARTTIME_:
        revert with 0, 'TIMELINE_WRONG'
    if ('cd', 68).length != 6:
        revert with 0, 'LIST_LENGTH_WRONG'
    require 0 < ('cd', 68).length
    _POOL_QUOTE_CAP_ = ('cd', 68)[0]
    require 1 < ('cd', 68).length
    _K_ = ('cd', 68)[1]
    require 2 < ('cd', 68).length
    _I_ = ('cd', 68)[2]
    require 3 < ('cd', 68).length
    _CLIFF_RATE_ = ('cd', 68)[3]
    require 4 < ('cd', 68).length
    sub_1616a237 = ('cd', 68)[4]
    require 5 < ('cd', 68).length
    sub_c548b575 = ('cd', 68)[5]
    if not _I_:
        revert with 0, 'I_VALUE_WRONG'
    if _I_ > 1000000000000000000 * 10^18:
        revert with 0, 'I_VALUE_WRONG'
    if _K_ > 10^18:
        revert with 0, 'K_VALUE_WRONG'
    if _CLIFF_RATE_ > 10^18:
        revert with 0, 'CLIFF_RATE_WRONG'
    if sub_1616a237 > 10^18:
        revert with 0, 'TOKEN_CLIFF_RATE_WRONG'
    require ext_code.size(_BASE_TOKEN_Address)
    staticcall _BASE_TOKEN_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _TOTAL_BASE_ = ext_call.return_data[0]
    if ('cd', 100).length != 2:
        revert with 0, 'SWITCHES_LENGTH_WRONG'
    require 0 < ('cd', 100).length
    require ('cd', 100)[0] == bool(('cd', 100)[0])
    Mask(72, 0, stor1.field_184) = Mask(72, 0, bool(('cd', 100)[0]))
    require 1 < ('cd', 100).length
    require ('cd', 100)[1] == bool(('cd', 100)[1])
    Mask(80, 0, stor1.field_176) = Mask(80, 0, bool(('cd', 100)[1]))
    if eth.balance(this.address) != 2 * 10^17:
        revert with 0, 'SETTLE_FUND_NOT_MATCH'
}

function getClaimableLPToken() {
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
        revert with 0, 'SUB_ERROR'
    if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return ext_call.return_data[0]
    if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
        revert with 0, 'SUB_ERROR'
    if _CLIFF_RATE_ > 10^18:
        revert with 0, 'SUB_ERROR'
    if not -_CLIFF_RATE_ + 10^18:
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _VESTING_DURATION_
        if not 0 / _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return ext_call.return_data[0]
        if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
            revert with 0, 'MUL_ERROR'
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return (ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18))
    if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'MUL_ERROR'
    if _VESTING_DURATION_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require _VESTING_DURATION_
    if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return ext_call.return_data[0]
    if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
        revert with 0, 'MUL_ERROR'
    require ext_code.size(_POOL_Address)
    staticcall _POOL_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
        revert with 0, 'SUB_ERROR'
    return (ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18))
}

function sub_89042f37(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor6:
        revert with 0, 'CLAIM_FREEZED'
    if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < sub_dc208dcc + _SETTLED_TIME_:
        revert with 0, 'CLAIM_FREEZED'
    if not _UNUSED_BASE_:
        if _TOTAL_SHARES_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _TOTAL_SHARES_
        if not stor6:
            revert with 0, 'CLAIM_FREEZED'
        if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < sub_dc208dcc + _SETTLED_TIME_:
            revert with 0, 'CLAIM_FREEZED'
        if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if sub_dc208dcc + _SETTLED_TIME_ > block.timestamp:
            revert with 0, 'SUB_ERROR'
        if block.timestamp - sub_dc208dcc - _SETTLED_TIME_ >= sub_2a33186e:
            if 0 > 0 / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            if sub_d7965055[address(arg1)] > 0 / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            return ((0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)])
        if block.timestamp - sub_dc208dcc - _SETTLED_TIME_ > sub_2a33186e:
            revert with 0, 'SUB_ERROR'
        if sub_1616a237 > 10^18:
            revert with 0, 'SUB_ERROR'
        if not -sub_1616a237 + 10^18:
            if sub_2a33186e <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require sub_2a33186e
            if not 0 / sub_2a33186e:
                if 0 > 0 / _TOTAL_SHARES_:
                    revert with 0, 'SUB_ERROR'
                if sub_d7965055[address(arg1)] > 0 / _TOTAL_SHARES_:
                    revert with 0, 'SUB_ERROR'
                return ((0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)])
            if 0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 0 / sub_2a33186e != 0 / _TOTAL_SHARES_:
                revert with 0, 'MUL_ERROR'
            if 0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18 > 0 / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            if sub_d7965055[address(arg1)] > (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18):
                revert with 0, 'SUB_ERROR'
            return ((0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)])
        if (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / -sub_1616a237 + 10^18 != sub_2a33186e - block.timestamp + sub_dc208dcc + _SETTLED_TIME_:
            revert with 0, 'MUL_ERROR'
        if sub_2a33186e <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require sub_2a33186e
        if not (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e:
            if 0 > 0 / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            if sub_d7965055[address(arg1)] > 0 / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            return ((0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)])
        if 0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e != 0 / _TOTAL_SHARES_:
            revert with 0, 'MUL_ERROR'
        if 0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18 > 0 / _TOTAL_SHARES_:
            revert with 0, 'SUB_ERROR'
        if sub_d7965055[address(arg1)] > (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18):
            revert with 0, 'SUB_ERROR'
        return ((0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)])
    if shares[address(arg1)] * _UNUSED_BASE_ / _UNUSED_BASE_ != shares[address(arg1)]:
        revert with 0, 'MUL_ERROR'
    if _TOTAL_SHARES_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require _TOTAL_SHARES_
    if not stor6:
        revert with 0, 'CLAIM_FREEZED'
    if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < sub_dc208dcc + _SETTLED_TIME_:
        revert with 0, 'CLAIM_FREEZED'
    if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if sub_dc208dcc + _SETTLED_TIME_ > block.timestamp:
        revert with 0, 'SUB_ERROR'
    if block.timestamp - sub_dc208dcc - _SETTLED_TIME_ >= sub_2a33186e:
        if 0 > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
            revert with 0, 'SUB_ERROR'
        if sub_d7965055[address(arg1)] > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
            revert with 0, 'SUB_ERROR'
        return ((shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)])
    if block.timestamp - sub_dc208dcc - _SETTLED_TIME_ > sub_2a33186e:
        revert with 0, 'SUB_ERROR'
    if sub_1616a237 > 10^18:
        revert with 0, 'SUB_ERROR'
    if not -sub_1616a237 + 10^18:
        if sub_2a33186e <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require sub_2a33186e
        if not 0 / sub_2a33186e:
            if 0 > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            if sub_d7965055[address(arg1)] > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            return ((shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)])
        if shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 0 / sub_2a33186e != shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
            revert with 0, 'MUL_ERROR'
        if shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18 > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
            revert with 0, 'SUB_ERROR'
        if sub_d7965055[address(arg1)] > (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18):
            revert with 0, 'SUB_ERROR'
        return ((shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)])
    if (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / -sub_1616a237 + 10^18 != sub_2a33186e - block.timestamp + sub_dc208dcc + _SETTLED_TIME_:
        revert with 0, 'MUL_ERROR'
    if sub_2a33186e <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require sub_2a33186e
    if not (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e:
        if 0 > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
            revert with 0, 'SUB_ERROR'
        if sub_d7965055[address(arg1)] > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
            revert with 0, 'SUB_ERROR'
        return ((shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)])
    if shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e != shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
        revert with 0, 'MUL_ERROR'
    if shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18 > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
        revert with 0, 'SUB_ERROR'
    if sub_d7965055[address(arg1)] > (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18):
        revert with 0, 'SUB_ERROR'
    return ((shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)])
}

function bid(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_192):
        revert with 0, 'FORCE_STOP'
    if block.timestamp < _PHASE_BID_STARTTIME_:
        revert with 0, 'NOT_PHASE_BID'
    if block.timestamp >= _PHASE_BID_ENDTIME_:
        revert with 0, 'NOT_PHASE_BID'
    if uint8(stor1.field_168):
        revert with 0, 'REENTRANT'
    uint8(stor1.field_168) = 1
    mem[100] = arg1
    require ext_code.size(_BIDDER_PERMISSION_Address)
    staticcall _BIDDER_PERMISSION_Address.isAllowed(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'BIDDER_NOT_ALLOWED'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(_QUOTE_TOKEN_Address)
    staticcall _QUOTE_TOKEN_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor1.field_184):
        if _QUOTE_RESERVE_ > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        mem[(2 * ceil32(return_data.size)) + 100] = arg1
        require ext_code.size(_MT_FEE_RATE_MODEL_Address)
        staticcall _MT_FEE_RATE_MODEL_Address.getFeeRate(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] - _QUOTE_RESERVE_:
            if 0 > ext_call.return_data[0] - _QUOTE_RESERVE_:
                revert with 0, 'SUB_ERROR'
            if ext_call.return_data[0] - _QUOTE_RESERVE_ + shares[address(arg1)] < shares[address(arg1)]:
                revert with 0, 'ADD_ERROR'
            shares[address(arg1)] = ext_call.return_data[0] - _QUOTE_RESERVE_ + shares[address(arg1)]
            if ext_call.return_data[0] - _QUOTE_RESERVE_ + _TOTAL_SHARES_ < _TOTAL_SHARES_:
                revert with 0, 'ADD_ERROR'
            _TOTAL_SHARES_ = ext_call.return_data[0] - _QUOTE_RESERVE_ + _TOTAL_SHARES_
            require ext_code.size(_QUOTE_TOKEN_Address)
            staticcall _QUOTE_TOKEN_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != _QUOTE_RESERVE_:
                _QUOTE_RESERVE_ = ext_call.return_data[0]
            emit Bid(address(arg1), ext_call.return_data[0] - _QUOTE_RESERVE_, 0);
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / ext_call.return_data[0] - _QUOTE_RESERVE_ != ext_call.return_data[0]:
                revert with 0, 'MUL_ERROR'
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18:
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor20)
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor20), uint32(stor20), (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18, mem[(4 * ceil32(return_data.size)) + 196 len 28]
                call _QUOTE_TOKEN_Address.mem[(4 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 228] == bool(mem[(4 * ceil32(return_data.size)) + 228])
                        if not mem[(4 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18 > ext_call.return_data[0] - _QUOTE_RESERVE_:
                revert with 0, 'SUB_ERROR'
            if ext_call.return_data[0] - _QUOTE_RESERVE_ - ((ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18) + shares[address(arg1)] < shares[address(arg1)]:
                revert with 0, 'ADD_ERROR'
            shares[address(arg1)] = ext_call.return_data[0] - _QUOTE_RESERVE_ - ((ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18) + shares[address(arg1)]
            if ext_call.return_data[0] - _QUOTE_RESERVE_ - ((ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18) + _TOTAL_SHARES_ < _TOTAL_SHARES_:
                revert with 0, 'ADD_ERROR'
            _TOTAL_SHARES_ = ext_call.return_data[0] - _QUOTE_RESERVE_ - ((ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18) + _TOTAL_SHARES_
            require ext_code.size(_QUOTE_TOKEN_Address)
            staticcall _QUOTE_TOKEN_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != _QUOTE_RESERVE_:
                _QUOTE_RESERVE_ = ext_call.return_data[0]
            emit Bid(address(arg1), ext_call.return_data[0] - _QUOTE_RESERVE_, (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18);
    else:
        if ext_call.return_data[0] > _POOL_QUOTE_CAP_:
            revert with 0, 'ALREADY_OVER_CAP'
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(_QUOTE_TOKEN_Address)
        staticcall _QUOTE_TOKEN_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _QUOTE_RESERVE_ > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        mem[(4 * ceil32(return_data.size)) + 100] = arg1
        require ext_code.size(_MT_FEE_RATE_MODEL_Address)
        staticcall _MT_FEE_RATE_MODEL_Address.getFeeRate(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] - _QUOTE_RESERVE_:
            if 0 > ext_call.return_data[0] - _QUOTE_RESERVE_:
                revert with 0, 'SUB_ERROR'
            if ext_call.return_data[0] - _QUOTE_RESERVE_ + shares[address(arg1)] < shares[address(arg1)]:
                revert with 0, 'ADD_ERROR'
            shares[address(arg1)] = ext_call.return_data[0] - _QUOTE_RESERVE_ + shares[address(arg1)]
            if ext_call.return_data[0] - _QUOTE_RESERVE_ + _TOTAL_SHARES_ < _TOTAL_SHARES_:
                revert with 0, 'ADD_ERROR'
            _TOTAL_SHARES_ = ext_call.return_data[0] - _QUOTE_RESERVE_ + _TOTAL_SHARES_
            require ext_code.size(_QUOTE_TOKEN_Address)
            staticcall _QUOTE_TOKEN_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != _QUOTE_RESERVE_:
                _QUOTE_RESERVE_ = ext_call.return_data[0]
            emit Bid(address(arg1), ext_call.return_data[0] - _QUOTE_RESERVE_, 0);
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / ext_call.return_data[0] - _QUOTE_RESERVE_ != ext_call.return_data[0]:
                revert with 0, 'MUL_ERROR'
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18:
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor20)
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor20), uint32(stor20), (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18, mem[(6 * ceil32(return_data.size)) + 196 len 28]
                call _QUOTE_TOKEN_Address.mem[(6 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(6 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 228] == bool(mem[(6 * ceil32(return_data.size)) + 228])
                        if not mem[(6 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18 > ext_call.return_data[0] - _QUOTE_RESERVE_:
                revert with 0, 'SUB_ERROR'
            if ext_call.return_data[0] - _QUOTE_RESERVE_ - ((ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18) + shares[address(arg1)] < shares[address(arg1)]:
                revert with 0, 'ADD_ERROR'
            shares[address(arg1)] = ext_call.return_data[0] - _QUOTE_RESERVE_ - ((ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18) + shares[address(arg1)]
            if ext_call.return_data[0] - _QUOTE_RESERVE_ - ((ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18) + _TOTAL_SHARES_ < _TOTAL_SHARES_:
                revert with 0, 'ADD_ERROR'
            _TOTAL_SHARES_ = ext_call.return_data[0] - _QUOTE_RESERVE_ - ((ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18) + _TOTAL_SHARES_
            require ext_code.size(_QUOTE_TOKEN_Address)
            staticcall _QUOTE_TOKEN_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != _QUOTE_RESERVE_:
                _QUOTE_RESERVE_ = ext_call.return_data[0]
            emit Bid(address(arg1), ext_call.return_data[0] - _QUOTE_RESERVE_, (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18);
    uint8(stor1.field_168) = 0
}

function claimLPToken() {
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
        revert with 0, 'SUB_ERROR'
    if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
        mem[100] = this.address
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
        call _POOL_Address.mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit ClaimLP(ext_call.return_data[0]);
    else:
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
            revert with 0, 'SUB_ERROR'
        if _CLIFF_RATE_ > 10^18:
            revert with 0, 'SUB_ERROR'
        if not -_CLIFF_RATE_ + 10^18:
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not 0 / _VESTING_DURATION_:
                mem[100] = this.address
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
                call _POOL_Address.mem[ceil32(return_data.size) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                        if not mem[ceil32(return_data.size) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit ClaimLP(ext_call.return_data[0]);
            else:
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                mem[100] = this.address
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18), mem[ceil32(return_data.size) + 196 len 28]
                call _POOL_Address.mem[ceil32(return_data.size) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                        if not mem[ceil32(return_data.size) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit ClaimLP((ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18)));
        else:
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                mem[100] = this.address
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
                call _POOL_Address.mem[ceil32(return_data.size) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                        if not mem[ceil32(return_data.size) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit ClaimLP(ext_call.return_data[0]);
            else:
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                mem[100] = this.address
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18), mem[ceil32(return_data.size) + 196 len 28]
                call _POOL_Address.mem[ceil32(return_data.size) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                        if not mem[ceil32(return_data.size) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit ClaimLP((ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18)));
}

function sub_a0c5b889(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor6:
        return bool(stor6), _SETTLED_TIME_, 0, 0, 0, 0, _POOL_Address, 0, shares[address(arg1)], bool(uint8(stor1.field_184))
    if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < sub_dc208dcc + _SETTLED_TIME_:
        if not stor6:
            return bool(stor6), _SETTLED_TIME_, 0, 0, 0, 0, _POOL_Address, 0, shares[address(arg1)], bool(uint8(stor1.field_184))
        if stor15[msg.sender]:
            if not stor6:
                return bool(stor6), _SETTLED_TIME_, 0, 0, 1, 0, _POOL_Address, 0, shares[address(arg1)], bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), _SETTLED_TIME_, 0, 0, 1, 0, _POOL_Address, 0, shares[address(arg1)], bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), _SETTLED_TIME_, 0, 0, 1, 0, _POOL_Address, 0, shares[address(arg1)], bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       0,
                       0,
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           0,
                           0,
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       0,
                       0,
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       0,
                       0,
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   0,
                   0,
                   1,
                   0,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if not _UNUSED_QUOTE_:
            if _TOTAL_SHARES_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _TOTAL_SHARES_
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       0,
                       0,
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       0,
                       0,
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       0,
                       0,
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       0,
                       0,
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           0,
                           0,
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       0,
                       0,
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       0,
                       0,
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   0,
                   0,
                   0,
                   0 / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if shares[address(arg1)] * _UNUSED_QUOTE_ / _UNUSED_QUOTE_ != shares[address(arg1)]:
            revert with 0, 'MUL_ERROR'
        if _TOTAL_SHARES_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _TOTAL_SHARES_
        if not stor6:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   0,
                   0,
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   0,
                   0,
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if address(_OWNER_) != address(arg1):
            return bool(stor6), 
                   _SETTLED_TIME_,
                   0,
                   0,
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
            revert with 0, 'SUB_ERROR'
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   0,
                   0,
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
            revert with 0, 'SUB_ERROR'
        if _CLIFF_RATE_ > 10^18:
            revert with 0, 'SUB_ERROR'
        if not -_CLIFF_RATE_ + 10^18:
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not 0 / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       0,
                       0,
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   0,
                   0,
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'MUL_ERROR'
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _VESTING_DURATION_
        if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   0,
                   0,
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
            revert with 0, 'MUL_ERROR'
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return bool(stor6), 
               _SETTLED_TIME_,
               0,
               0,
               0,
               shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
               _POOL_Address,
               ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if not stor6:
        revert with 0, 'CLAIM_FREEZED'
    if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < sub_dc208dcc + _SETTLED_TIME_:
        revert with 0, 'CLAIM_FREEZED'
    if not _UNUSED_BASE_:
        if _TOTAL_SHARES_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _TOTAL_SHARES_
        if not stor6:
            revert with 0, 'CLAIM_FREEZED'
        if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < sub_dc208dcc + _SETTLED_TIME_:
            revert with 0, 'CLAIM_FREEZED'
        if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if sub_dc208dcc + _SETTLED_TIME_ > block.timestamp:
            revert with 0, 'SUB_ERROR'
        if block.timestamp - sub_dc208dcc - _SETTLED_TIME_ >= sub_2a33186e:
            if 0 > 0 / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            if sub_d7965055[address(arg1)] > 0 / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if stor15[msg.sender]:
                if not stor6:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if address(_OWNER_) != address(arg1):
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                    revert with 0, 'SUB_ERROR'
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                    revert with 0, 'SUB_ERROR'
                if _CLIFF_RATE_ > 10^18:
                    revert with 0, 'SUB_ERROR'
                if not -_CLIFF_RATE_ + 10^18:
                    if _VESTING_DURATION_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _VESTING_DURATION_
                    if not 0 / _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               1,
                               0,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                        revert with 0, 'MUL_ERROR'
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'MUL_ERROR'
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not _UNUSED_QUOTE_:
                if _TOTAL_SHARES_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _TOTAL_SHARES_
                if not stor6:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if address(_OWNER_) != address(arg1):
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                    revert with 0, 'SUB_ERROR'
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                    revert with 0, 'SUB_ERROR'
                if _CLIFF_RATE_ > 10^18:
                    revert with 0, 'SUB_ERROR'
                if not -_CLIFF_RATE_ + 10^18:
                    if _VESTING_DURATION_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _VESTING_DURATION_
                    if not 0 / _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               0,
                               0 / _TOTAL_SHARES_,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                        revert with 0, 'MUL_ERROR'
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'MUL_ERROR'
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if shares[address(arg1)] * _UNUSED_QUOTE_ / _UNUSED_QUOTE_ != shares[address(arg1)]:
                revert with 0, 'MUL_ERROR'
            if _TOTAL_SHARES_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _TOTAL_SHARES_
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if block.timestamp - sub_dc208dcc - _SETTLED_TIME_ > sub_2a33186e:
            revert with 0, 'SUB_ERROR'
        if sub_1616a237 > 10^18:
            revert with 0, 'SUB_ERROR'
        if not -sub_1616a237 + 10^18:
            if sub_2a33186e <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require sub_2a33186e
            if not 0 / sub_2a33186e:
                if 0 > 0 / _TOTAL_SHARES_:
                    revert with 0, 'SUB_ERROR'
                if sub_d7965055[address(arg1)] > 0 / _TOTAL_SHARES_:
                    revert with 0, 'SUB_ERROR'
                if not stor6:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if stor15[msg.sender]:
                    if not stor6:
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               1,
                               0,
                               _POOL_Address,
                               0,
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                        revert with 0, 'ADD_ERROR'
                    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               1,
                               0,
                               _POOL_Address,
                               0,
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if address(_OWNER_) != address(arg1):
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               1,
                               0,
                               _POOL_Address,
                               0,
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if not stor6:
                        revert with 0, 'FREEZED'
                    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                        revert with 0, 'ADD_ERROR'
                    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                        revert with 0, 'FREEZED'
                    if not stor6:
                        revert with 0, 'FREEZED'
                    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                        revert with 0, 'ADD_ERROR'
                    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                        revert with 0, 'FREEZED'
                    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                        revert with 0, 'ADD_ERROR'
                    if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                        revert with 0, 'SUB_ERROR'
                    if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               1,
                               0,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                        revert with 0, 'SUB_ERROR'
                    if _CLIFF_RATE_ > 10^18:
                        revert with 0, 'SUB_ERROR'
                    if not -_CLIFF_RATE_ + 10^18:
                        if _VESTING_DURATION_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        require _VESTING_DURATION_
                        if not 0 / _VESTING_DURATION_:
                            require ext_code.size(_POOL_Address)
                            staticcall _POOL_Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SUB_ERROR'
                            return bool(stor6), 
                                   _SETTLED_TIME_,
                                   (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                                   sub_d7965055[address(arg1)],
                                   1,
                                   0,
                                   _POOL_Address,
                                   ext_call.return_data[0],
                                   shares[address(arg1)],
                                   bool(uint8(stor1.field_184))
                        if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                            revert with 0, 'MUL_ERROR'
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               1,
                               0,
                               _POOL_Address,
                               ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                        revert with 0, 'MUL_ERROR'
                    if _VESTING_DURATION_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _VESTING_DURATION_
                    if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               1,
                               0,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                        revert with 0, 'MUL_ERROR'
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if not _UNUSED_QUOTE_:
                    if _TOTAL_SHARES_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _TOTAL_SHARES_
                    if not stor6:
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               0,
                               0 / _TOTAL_SHARES_,
                               _POOL_Address,
                               0,
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                        revert with 0, 'ADD_ERROR'
                    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               0,
                               0 / _TOTAL_SHARES_,
                               _POOL_Address,
                               0,
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if address(_OWNER_) != address(arg1):
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               0,
                               0 / _TOTAL_SHARES_,
                               _POOL_Address,
                               0,
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if not stor6:
                        revert with 0, 'FREEZED'
                    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                        revert with 0, 'ADD_ERROR'
                    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                        revert with 0, 'FREEZED'
                    if not stor6:
                        revert with 0, 'FREEZED'
                    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                        revert with 0, 'ADD_ERROR'
                    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                        revert with 0, 'FREEZED'
                    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                        revert with 0, 'ADD_ERROR'
                    if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                        revert with 0, 'SUB_ERROR'
                    if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               0,
                               0 / _TOTAL_SHARES_,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                        revert with 0, 'SUB_ERROR'
                    if _CLIFF_RATE_ > 10^18:
                        revert with 0, 'SUB_ERROR'
                    if not -_CLIFF_RATE_ + 10^18:
                        if _VESTING_DURATION_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        require _VESTING_DURATION_
                        if not 0 / _VESTING_DURATION_:
                            require ext_code.size(_POOL_Address)
                            staticcall _POOL_Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SUB_ERROR'
                            return bool(stor6), 
                                   _SETTLED_TIME_,
                                   (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                                   sub_d7965055[address(arg1)],
                                   0,
                                   0 / _TOTAL_SHARES_,
                                   _POOL_Address,
                                   ext_call.return_data[0],
                                   shares[address(arg1)],
                                   bool(uint8(stor1.field_184))
                        if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                            revert with 0, 'MUL_ERROR'
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               0,
                               0 / _TOTAL_SHARES_,
                               _POOL_Address,
                               ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                        revert with 0, 'MUL_ERROR'
                    if _VESTING_DURATION_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _VESTING_DURATION_
                    if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               0,
                               0 / _TOTAL_SHARES_,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                        revert with 0, 'MUL_ERROR'
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if shares[address(arg1)] * _UNUSED_QUOTE_ / _UNUSED_QUOTE_ != shares[address(arg1)]:
                    revert with 0, 'MUL_ERROR'
                if _TOTAL_SHARES_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _TOTAL_SHARES_
                if not stor6:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if address(_OWNER_) != address(arg1):
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                    revert with 0, 'SUB_ERROR'
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                    revert with 0, 'SUB_ERROR'
                if _CLIFF_RATE_ > 10^18:
                    revert with 0, 'SUB_ERROR'
                if not -_CLIFF_RATE_ + 10^18:
                    if _VESTING_DURATION_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _VESTING_DURATION_
                    if not 0 / _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               0,
                               shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                        revert with 0, 'MUL_ERROR'
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'MUL_ERROR'
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if 0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 0 / sub_2a33186e != 0 / _TOTAL_SHARES_:
                revert with 0, 'MUL_ERROR'
            if 0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18 > 0 / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            if sub_d7965055[address(arg1)] > (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18):
                revert with 0, 'SUB_ERROR'
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if stor15[msg.sender]:
                if not stor6:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if address(_OWNER_) != address(arg1):
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                    revert with 0, 'SUB_ERROR'
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                    revert with 0, 'SUB_ERROR'
                if _CLIFF_RATE_ > 10^18:
                    revert with 0, 'SUB_ERROR'
                if not -_CLIFF_RATE_ + 10^18:
                    if _VESTING_DURATION_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _VESTING_DURATION_
                    if not 0 / _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               1,
                               0,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                        revert with 0, 'MUL_ERROR'
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'MUL_ERROR'
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not _UNUSED_QUOTE_:
                if _TOTAL_SHARES_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _TOTAL_SHARES_
                if not stor6:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if address(_OWNER_) != address(arg1):
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                    revert with 0, 'SUB_ERROR'
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                    revert with 0, 'SUB_ERROR'
                if _CLIFF_RATE_ > 10^18:
                    revert with 0, 'SUB_ERROR'
                if not -_CLIFF_RATE_ + 10^18:
                    if _VESTING_DURATION_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _VESTING_DURATION_
                    if not 0 / _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               0,
                               0 / _TOTAL_SHARES_,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                        revert with 0, 'MUL_ERROR'
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'MUL_ERROR'
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if shares[address(arg1)] * _UNUSED_QUOTE_ / _UNUSED_QUOTE_ != shares[address(arg1)]:
                revert with 0, 'MUL_ERROR'
            if _TOTAL_SHARES_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _TOTAL_SHARES_
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / -sub_1616a237 + 10^18 != sub_2a33186e - block.timestamp + sub_dc208dcc + _SETTLED_TIME_:
            revert with 0, 'MUL_ERROR'
        if sub_2a33186e <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require sub_2a33186e
        if not (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e:
            if 0 > 0 / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            if sub_d7965055[address(arg1)] > 0 / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if stor15[msg.sender]:
                if not stor6:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if address(_OWNER_) != address(arg1):
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                    revert with 0, 'SUB_ERROR'
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                    revert with 0, 'SUB_ERROR'
                if _CLIFF_RATE_ > 10^18:
                    revert with 0, 'SUB_ERROR'
                if not -_CLIFF_RATE_ + 10^18:
                    if _VESTING_DURATION_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _VESTING_DURATION_
                    if not 0 / _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               1,
                               0,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                        revert with 0, 'MUL_ERROR'
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'MUL_ERROR'
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not _UNUSED_QUOTE_:
                if _TOTAL_SHARES_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _TOTAL_SHARES_
                if not stor6:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if address(_OWNER_) != address(arg1):
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                    revert with 0, 'SUB_ERROR'
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                    revert with 0, 'SUB_ERROR'
                if _CLIFF_RATE_ > 10^18:
                    revert with 0, 'SUB_ERROR'
                if not -_CLIFF_RATE_ + 10^18:
                    if _VESTING_DURATION_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _VESTING_DURATION_
                    if not 0 / _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               0,
                               0 / _TOTAL_SHARES_,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                        revert with 0, 'MUL_ERROR'
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'MUL_ERROR'
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if shares[address(arg1)] * _UNUSED_QUOTE_ / _UNUSED_QUOTE_ != shares[address(arg1)]:
                revert with 0, 'MUL_ERROR'
            if _TOTAL_SHARES_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _TOTAL_SHARES_
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (0 / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if 0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e != 0 / _TOTAL_SHARES_:
            revert with 0, 'MUL_ERROR'
        if 0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18 > 0 / _TOTAL_SHARES_:
            revert with 0, 'SUB_ERROR'
        if sub_d7965055[address(arg1)] > (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18):
            revert with 0, 'SUB_ERROR'
        if not stor6:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if stor15[msg.sender]:
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   1,
                   0,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if not _UNUSED_QUOTE_:
            if _TOTAL_SHARES_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _TOTAL_SHARES_
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0 / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if shares[address(arg1)] * _UNUSED_QUOTE_ / _UNUSED_QUOTE_ != shares[address(arg1)]:
            revert with 0, 'MUL_ERROR'
        if _TOTAL_SHARES_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _TOTAL_SHARES_
        if not stor6:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if address(_OWNER_) != address(arg1):
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
            revert with 0, 'SUB_ERROR'
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
            revert with 0, 'SUB_ERROR'
        if _CLIFF_RATE_ > 10^18:
            revert with 0, 'SUB_ERROR'
        if not -_CLIFF_RATE_ + 10^18:
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not 0 / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'MUL_ERROR'
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _VESTING_DURATION_
        if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
            revert with 0, 'MUL_ERROR'
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return bool(stor6), 
               _SETTLED_TIME_,
               (0 / _TOTAL_SHARES_) - (0 / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               0,
               shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
               _POOL_Address,
               ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if shares[address(arg1)] * _UNUSED_BASE_ / _UNUSED_BASE_ != shares[address(arg1)]:
        revert with 0, 'MUL_ERROR'
    if _TOTAL_SHARES_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require _TOTAL_SHARES_
    if not stor6:
        revert with 0, 'CLAIM_FREEZED'
    if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < sub_dc208dcc + _SETTLED_TIME_:
        revert with 0, 'CLAIM_FREEZED'
    if sub_dc208dcc + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if sub_dc208dcc + _SETTLED_TIME_ > block.timestamp:
        revert with 0, 'SUB_ERROR'
    if block.timestamp - sub_dc208dcc - _SETTLED_TIME_ >= sub_2a33186e:
        if 0 > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
            revert with 0, 'SUB_ERROR'
        if sub_d7965055[address(arg1)] > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
            revert with 0, 'SUB_ERROR'
        if not stor6:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if stor15[msg.sender]:
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   1,
                   0,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if not _UNUSED_QUOTE_:
            if _TOTAL_SHARES_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _TOTAL_SHARES_
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0 / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if shares[address(arg1)] * _UNUSED_QUOTE_ / _UNUSED_QUOTE_ != shares[address(arg1)]:
            revert with 0, 'MUL_ERROR'
        if _TOTAL_SHARES_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _TOTAL_SHARES_
        if not stor6:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if address(_OWNER_) != address(arg1):
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
            revert with 0, 'SUB_ERROR'
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
            revert with 0, 'SUB_ERROR'
        if _CLIFF_RATE_ > 10^18:
            revert with 0, 'SUB_ERROR'
        if not -_CLIFF_RATE_ + 10^18:
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not 0 / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'MUL_ERROR'
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _VESTING_DURATION_
        if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
            revert with 0, 'MUL_ERROR'
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return bool(stor6), 
               _SETTLED_TIME_,
               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               0,
               shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
               _POOL_Address,
               ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if block.timestamp - sub_dc208dcc - _SETTLED_TIME_ > sub_2a33186e:
        revert with 0, 'SUB_ERROR'
    if sub_1616a237 > 10^18:
        revert with 0, 'SUB_ERROR'
    if not -sub_1616a237 + 10^18:
        if sub_2a33186e <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require sub_2a33186e
        if not 0 / sub_2a33186e:
            if 0 > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            if sub_d7965055[address(arg1)] > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
                revert with 0, 'SUB_ERROR'
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if stor15[msg.sender]:
                if not stor6:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if address(_OWNER_) != address(arg1):
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                    revert with 0, 'SUB_ERROR'
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                    revert with 0, 'SUB_ERROR'
                if _CLIFF_RATE_ > 10^18:
                    revert with 0, 'SUB_ERROR'
                if not -_CLIFF_RATE_ + 10^18:
                    if _VESTING_DURATION_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _VESTING_DURATION_
                    if not 0 / _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               1,
                               0,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                        revert with 0, 'MUL_ERROR'
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'MUL_ERROR'
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not _UNUSED_QUOTE_:
                if _TOTAL_SHARES_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _TOTAL_SHARES_
                if not stor6:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if address(_OWNER_) != address(arg1):
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           0,
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if not stor6:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'FREEZED'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                    revert with 0, 'ADD_ERROR'
                if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                    revert with 0, 'SUB_ERROR'
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                    revert with 0, 'SUB_ERROR'
                if _CLIFF_RATE_ > 10^18:
                    revert with 0, 'SUB_ERROR'
                if not -_CLIFF_RATE_ + 10^18:
                    if _VESTING_DURATION_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _VESTING_DURATION_
                    if not 0 / _VESTING_DURATION_:
                        require ext_code.size(_POOL_Address)
                        staticcall _POOL_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SUB_ERROR'
                        return bool(stor6), 
                               _SETTLED_TIME_,
                               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                               sub_d7965055[address(arg1)],
                               0,
                               0 / _TOTAL_SHARES_,
                               _POOL_Address,
                               ext_call.return_data[0],
                               shares[address(arg1)],
                               bool(uint8(stor1.field_184))
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                        revert with 0, 'MUL_ERROR'
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                    revert with 0, 'MUL_ERROR'
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if shares[address(arg1)] * _UNUSED_QUOTE_ / _UNUSED_QUOTE_ != shares[address(arg1)]:
                revert with 0, 'MUL_ERROR'
            if _TOTAL_SHARES_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _TOTAL_SHARES_
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 0 / sub_2a33186e != shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
            revert with 0, 'MUL_ERROR'
        if shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18 > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
            revert with 0, 'SUB_ERROR'
        if sub_d7965055[address(arg1)] > (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18):
            revert with 0, 'SUB_ERROR'
        if not stor6:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if stor15[msg.sender]:
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   1,
                   0,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if not _UNUSED_QUOTE_:
            if _TOTAL_SHARES_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _TOTAL_SHARES_
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0 / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if shares[address(arg1)] * _UNUSED_QUOTE_ / _UNUSED_QUOTE_ != shares[address(arg1)]:
            revert with 0, 'MUL_ERROR'
        if _TOTAL_SHARES_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _TOTAL_SHARES_
        if not stor6:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if address(_OWNER_) != address(arg1):
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
            revert with 0, 'SUB_ERROR'
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
            revert with 0, 'SUB_ERROR'
        if _CLIFF_RATE_ > 10^18:
            revert with 0, 'SUB_ERROR'
        if not -_CLIFF_RATE_ + 10^18:
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not 0 / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'MUL_ERROR'
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _VESTING_DURATION_
        if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
            revert with 0, 'MUL_ERROR'
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return bool(stor6), 
               _SETTLED_TIME_,
               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * 0 / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               0,
               shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
               _POOL_Address,
               ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / -sub_1616a237 + 10^18 != sub_2a33186e - block.timestamp + sub_dc208dcc + _SETTLED_TIME_:
        revert with 0, 'MUL_ERROR'
    if sub_2a33186e <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require sub_2a33186e
    if not (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e:
        if 0 > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
            revert with 0, 'SUB_ERROR'
        if sub_d7965055[address(arg1)] > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
            revert with 0, 'SUB_ERROR'
        if not stor6:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if stor15[msg.sender]:
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           1,
                           0,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   1,
                   0,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if not _UNUSED_QUOTE_:
            if _TOTAL_SHARES_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _TOTAL_SHARES_
            if not stor6:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if address(_OWNER_) != address(arg1):
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       0,
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if not stor6:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'FREEZED'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
                revert with 0, 'ADD_ERROR'
            if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
                revert with 0, 'SUB_ERROR'
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
                revert with 0, 'SUB_ERROR'
            if _CLIFF_RATE_ > 10^18:
                revert with 0, 'SUB_ERROR'
            if not -_CLIFF_RATE_ + 10^18:
                if _VESTING_DURATION_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _VESTING_DURATION_
                if not 0 / _VESTING_DURATION_:
                    require ext_code.size(_POOL_Address)
                    staticcall _POOL_Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SUB_ERROR'
                    return bool(stor6), 
                           _SETTLED_TIME_,
                           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                           sub_d7965055[address(arg1)],
                           0,
                           0 / _TOTAL_SHARES_,
                           _POOL_Address,
                           ext_call.return_data[0],
                           shares[address(arg1)],
                           bool(uint8(stor1.field_184))
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0 / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if shares[address(arg1)] * _UNUSED_QUOTE_ / _UNUSED_QUOTE_ != shares[address(arg1)]:
            revert with 0, 'MUL_ERROR'
        if _TOTAL_SHARES_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _TOTAL_SHARES_
        if not stor6:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if address(_OWNER_) != address(arg1):
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
            revert with 0, 'SUB_ERROR'
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
            revert with 0, 'SUB_ERROR'
        if _CLIFF_RATE_ > 10^18:
            revert with 0, 'SUB_ERROR'
        if not -_CLIFF_RATE_ + 10^18:
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not 0 / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'MUL_ERROR'
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _VESTING_DURATION_
        if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
            revert with 0, 'MUL_ERROR'
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return bool(stor6), 
               _SETTLED_TIME_,
               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               0,
               shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
               _POOL_Address,
               ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e != shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
        revert with 0, 'MUL_ERROR'
    if shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18 > shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_:
        revert with 0, 'SUB_ERROR'
    if sub_d7965055[address(arg1)] > (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18):
        revert with 0, 'SUB_ERROR'
    if not stor6:
        return bool(stor6), 
               _SETTLED_TIME_,
               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               0,
               0,
               _POOL_Address,
               0,
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if stor15[msg.sender]:
        if not stor6:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   1,
                   0,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   1,
                   0,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if address(_OWNER_) != address(arg1):
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   1,
                   0,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
            revert with 0, 'SUB_ERROR'
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   1,
                   0,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
            revert with 0, 'SUB_ERROR'
        if _CLIFF_RATE_ > 10^18:
            revert with 0, 'SUB_ERROR'
        if not -_CLIFF_RATE_ + 10^18:
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not 0 / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       1,
                       0,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   1,
                   0,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'MUL_ERROR'
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _VESTING_DURATION_
        if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   1,
                   0,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
            revert with 0, 'MUL_ERROR'
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return bool(stor6), 
               _SETTLED_TIME_,
               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               1,
               0,
               _POOL_Address,
               ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if not _UNUSED_QUOTE_:
        if _TOTAL_SHARES_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _TOTAL_SHARES_
        if not stor6:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0 / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0 / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if address(_OWNER_) != address(arg1):
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0 / _TOTAL_SHARES_,
                   _POOL_Address,
                   0,
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if not stor6:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'FREEZED'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
            revert with 0, 'ADD_ERROR'
        if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
            revert with 0, 'SUB_ERROR'
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0 / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
            revert with 0, 'SUB_ERROR'
        if _CLIFF_RATE_ > 10^18:
            revert with 0, 'SUB_ERROR'
        if not -_CLIFF_RATE_ + 10^18:
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not 0 / _VESTING_DURATION_:
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                return bool(stor6), 
                       _SETTLED_TIME_,
                       (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                       sub_d7965055[address(arg1)],
                       0,
                       0 / _TOTAL_SHARES_,
                       _POOL_Address,
                       ext_call.return_data[0],
                       shares[address(arg1)],
                       bool(uint8(stor1.field_184))
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                revert with 0, 'MUL_ERROR'
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0 / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'MUL_ERROR'
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _VESTING_DURATION_
        if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   0 / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
            revert with 0, 'MUL_ERROR'
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return bool(stor6), 
               _SETTLED_TIME_,
               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               0,
               0 / _TOTAL_SHARES_,
               _POOL_Address,
               ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if shares[address(arg1)] * _UNUSED_QUOTE_ / _UNUSED_QUOTE_ != shares[address(arg1)]:
        revert with 0, 'MUL_ERROR'
    if _TOTAL_SHARES_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require _TOTAL_SHARES_
    if not stor6:
        return bool(stor6), 
               _SETTLED_TIME_,
               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               0,
               shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
               _POOL_Address,
               0,
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        return bool(stor6), 
               _SETTLED_TIME_,
               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               0,
               shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
               _POOL_Address,
               0,
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if address(_OWNER_) != address(arg1):
        return bool(stor6), 
               _SETTLED_TIME_,
               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               0,
               shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
               _POOL_Address,
               0,
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
        revert with 0, 'SUB_ERROR'
    if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return bool(stor6), 
               _SETTLED_TIME_,
               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               0,
               shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
               _POOL_Address,
               ext_call.return_data[0],
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
        revert with 0, 'SUB_ERROR'
    if _CLIFF_RATE_ > 10^18:
        revert with 0, 'SUB_ERROR'
    if not -_CLIFF_RATE_ + 10^18:
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _VESTING_DURATION_
        if not 0 / _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return bool(stor6), 
                   _SETTLED_TIME_,
                   (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
                   sub_d7965055[address(arg1)],
                   0,
                   shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
                   _POOL_Address,
                   ext_call.return_data[0],
                   shares[address(arg1)],
                   bool(uint8(stor1.field_184))
        if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
            revert with 0, 'MUL_ERROR'
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return bool(stor6), 
               _SETTLED_TIME_,
               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               0,
               shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
               _POOL_Address,
               ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18),
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'MUL_ERROR'
    if _VESTING_DURATION_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require _VESTING_DURATION_
    if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return bool(stor6), 
               _SETTLED_TIME_,
               (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
               sub_d7965055[address(arg1)],
               0,
               shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
               _POOL_Address,
               ext_call.return_data[0],
               shares[address(arg1)],
               bool(uint8(stor1.field_184))
    if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
        revert with 0, 'MUL_ERROR'
    require ext_code.size(_POOL_Address)
    staticcall _POOL_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
        revert with 0, 'SUB_ERROR'
    return bool(stor6), 
           _SETTLED_TIME_,
           (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_) - (shares[address(arg1)] * _UNUSED_BASE_ / _TOTAL_SHARES_ * (10^18 * sub_2a33186e) - (sub_1616a237 * sub_2a33186e) - (10^18 * block.timestamp) + (sub_1616a237 * block.timestamp) + (10^18 * sub_dc208dcc) - (sub_1616a237 * sub_dc208dcc) + (10^18 * _SETTLED_TIME_) - (sub_1616a237 * _SETTLED_TIME_) / sub_2a33186e / 10^18) - sub_d7965055[address(arg1)],
           sub_d7965055[address(arg1)],
           0,
           shares[address(arg1)] * _UNUSED_QUOTE_ / _TOTAL_SHARES_,
           _POOL_Address,
           ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18),
           shares[address(arg1)],
           bool(uint8(stor1.field_184))
}



}
