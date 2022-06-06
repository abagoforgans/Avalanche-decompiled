contract main {




// =====================  Runtime code  =====================


address _OWNER_;
uint8 stor1; offset 160
address _NEW_OWNER_;
mapping of struct sub_5ab971eb;
uint64 sub_1d5c3f57;

function _OWNER_() payable {
    return _OWNER_
}

function sub_1d5c3f57(?) payable {
    return sub_1d5c3f57
}

function sub_5ab971eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5ab971eb[arg1].field_0, 
           sub_5ab971eb[arg1].field_0,
           sub_5ab971eb[arg1].field_256,
           sub_5ab971eb[arg1].field_256,
           sub_5ab971eb[arg1].field_448
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function initOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'InitializableOwnable: SHOULD_NOT_BE_INITIALIZED'
    stor1 = 1
    _OWNER_ = arg1
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'InitializableOwnable: INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function sub_6c685e3e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    if uint64(arg1) > 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'WooGuardian: newBound out of range'
    sub_1d5c3f57 = uint64(arg1)
}

function sub_4bd33c57(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    if not address(arg1):
        revert with 0, 'WooGuardian: token_ZERO_ADDR'
    if uint64(arg2) > 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'WooGuardian: newBound out of range'
    sub_5ab971eb[address(arg1)].field_448 = uint64(arg2)
}

function sub_aa197245(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == Mask(96, 0, arg2)
    require arg3 == Mask(96, 0, arg3)
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    if not address(arg1):
        revert with 0, 'WooGuardian: token_ZERO_ADDR'
    if Mask(96, 0, arg2) >= Mask(96, 0, arg3):
        revert with 0, 'WooGuardian: min_max_INVALID'
    sub_5ab971eb[address(arg1)].field_256 = Mask(96, 0, arg2)
    sub_5ab971eb[address(arg1)].field_352 = Mask(96, 0, arg3)
    emit 0xd38bfe56: arg2 << 160, Mask(96, 0, arg3), address(arg1)
}

function sub_fc1f691f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_5ab971eb[address(arg1)].field_448:
        if sub_5ab971eb[address(arg2)].field_448:
            if sub_5ab971eb[address(arg1)].field_448 > sub_5ab971eb[address(arg2)].field_448:
                return sub_5ab971eb[address(arg1)].field_448
            return sub_5ab971eb[address(arg2)].field_448
        if sub_5ab971eb[address(arg1)].field_448 > sub_1d5c3f57:
            return sub_5ab971eb[address(arg1)].field_448
    else:
        if sub_5ab971eb[address(arg2)].field_448:
            if sub_1d5c3f57 > sub_5ab971eb[address(arg2)].field_448:
                return sub_1d5c3f57
            return sub_5ab971eb[address(arg2)].field_448
    return sub_1d5c3f57
}

function sub_8b828440(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'WooGuardian: token_ZERO_ADDR'
    if arg2 >= test266151307():
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'WooGuardian: inputAmount_uint96_OVERFLOW'
    if sub_5ab971eb[address(arg1)].field_256:
        if Mask(96, 0, arg2) < sub_5ab971eb[address(arg1)].field_256:
            revert with 0, 'WooGuardian: inputAmount_LTM'
        if sub_5ab971eb[address(arg1)].field_352:
            if Mask(96, 0, arg2) > sub_5ab971eb[address(arg1)].field_352:
                revert with 0, 'WooGuardian: inputAmount_GTM'
        else:
            if Mask(96, 0, arg2) > 100 * 10^18:
                revert with 0, 'WooGuardian: inputAmount_GTM'
    else:
        if Mask(96, 0, arg2) < 10^16:
            revert with 0, 'WooGuardian: inputAmount_LTM'
        if sub_5ab971eb[address(arg1)].field_352:
            if Mask(96, 0, arg2) > sub_5ab971eb[address(arg1)].field_352:
                revert with 0, 'WooGuardian: inputAmount_GTM'
        else:
            if Mask(96, 0, arg2) > 100 * 10^18:
                revert with 0, 'WooGuardian: inputAmount_GTM'
}

function sub_3ff61305(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == Mask(96, 0, arg3)
    require arg4 == Mask(96, 0, arg4)
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    if not address(arg1):
        revert with 0, 'WooGuardian: token_ZERO_ADDR'
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    if not address(arg1):
        revert with 0, 'WooGuardian: token_ZERO_ADDR'
    if Mask(96, 0, arg3) >= Mask(96, 0, arg4):
        revert with 0, 'WooGuardian: min_max_INVALID'
    sub_5ab971eb[address(arg1)].field_256 = Mask(96, 0, arg3)
    sub_5ab971eb[address(arg1)].field_352 = Mask(96, 0, arg4)
    emit 0xd38bfe56: arg3 << 160, Mask(96, 0, arg4), address(arg1)
    sub_5ab971eb[address(arg1)].field_0 = address(arg2)
    if not address(arg2):
        sub_5ab971eb[address(arg1)].field_0 = sub_5ab971eb[address(arg1)].field_0
    else:
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] < ext_call.return_data[31 len 1]:
            revert with 0, 'SafeMath: addition overflow'
        if uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] > 36:
            revert with 0, 'SafeMath: subtraction overflow'
        require 10^(-uint8(ext_call.return_data[0]) + -ext_call.return_data[31 len 1] + 36) <= test266151307()
        sub_5ab971eb[address(arg1)].field_160 = Mask(96, 0, 10^(-uint8(ext_call.return_data[0]) + -ext_call.return_data[31 len 1] + 36))
    emit 0xc83d07d9: address(arg1), address(arg2)
}

function sub_927e40cf(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not address(arg2):
        revert with 0, 'WooGuardian: fromToken_ZERO_ADDR'
    if not address(arg3):
        revert with 0, 'WooGuardian: toToken_ZERO_ADDR'
    if not sub_5ab971eb[address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'WooGuardian: fromToken_RefOracle_INVALID'
    if not sub_5ab971eb[address(arg3)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'WooGuardian: toToken_RefOracle_INVALID'
    require ext_code.size(sub_5ab971eb[address(arg2)].field_0)
    staticcall sub_5ab971eb[address(arg2)].field_0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'WooGuardian: INVALID_CHAINLINK_PRICE'
    require ext_code.size(sub_5ab971eb[address(arg3)].field_0)
    staticcall sub_5ab971eb[address(arg3)].field_0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'WooGuardian: INVALID_CHAINLINK_QUOTE_PRICE'
    if not ext_call.return_data[32]:
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        if sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / ext_call.return_data[32] != sub_5ab971eb[address(arg3)].field_160:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]
        if sub_5ab971eb[address(arg2)].field_448:
            if sub_5ab971eb[address(arg3)].field_448:
                if sub_5ab971eb[address(arg2)].field_448 > sub_5ab971eb[address(arg3)].field_448:
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if 0 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if arg1 > 0:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                            if arg1 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if arg1 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                else:
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if 0 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if arg1 > 0:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                            if arg1 > uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if arg1 > (uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
            else:
                if sub_5ab971eb[address(arg2)].field_448 > sub_1d5c3f57:
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if 0 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if arg1 > 0:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                            if arg1 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if arg1 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                else:
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if 0 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_1d5c3f57 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if arg1 > 0:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_1d5c3f57 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                            if arg1 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if arg1 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
        else:
            if sub_5ab971eb[address(arg3)].field_448:
                if sub_1d5c3f57 > sub_5ab971eb[address(arg3)].field_448:
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if 0 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_1d5c3f57 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if arg1 > 0:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_1d5c3f57 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                            if arg1 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if arg1 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                else:
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if 0 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if arg1 > 0:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                            if arg1 > uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if arg1 > (uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
            else:
                if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                    if 0 > arg1:
                        revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                else:
                    if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_1d5c3f57 + 10^18):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                        revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                    if arg1 > 0:
                        revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                else:
                    if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_1d5c3f57 + 10^18):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                        if arg1 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if arg1 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
    else:
        if sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / ext_call.return_data[32] != sub_5ab971eb[address(arg2)].field_160:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[32]:
            if sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32]:
                if 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
            revert with 0, 'SafeMath: division by zero'
        if sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / ext_call.return_data[32] != sub_5ab971eb[address(arg3)].field_160:
            revert with 0, 'SafeMath: multiplication overflow'
        if not sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32]:
            if sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]
            if sub_5ab971eb[address(arg2)].field_448:
                if sub_5ab971eb[address(arg3)].field_448:
                    if sub_5ab971eb[address(arg2)].field_448 > sub_5ab971eb[address(arg3)].field_448:
                        if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if 0 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if arg1 > 0:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                                if arg1 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                            else:
                                if arg1 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if 0 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if arg1 > 0:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                                if arg1 > uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                            else:
                                if arg1 > (uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                else:
                    if sub_5ab971eb[address(arg2)].field_448 > sub_1d5c3f57:
                        if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if 0 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if arg1 > 0:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                                if arg1 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                            else:
                                if arg1 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if 0 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_1d5c3f57 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if arg1 > 0:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_1d5c3f57 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                                if arg1 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                            else:
                                if arg1 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
            else:
                if sub_5ab971eb[address(arg3)].field_448:
                    if sub_1d5c3f57 > sub_5ab971eb[address(arg3)].field_448:
                        if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if 0 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_1d5c3f57 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if arg1 > 0:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_1d5c3f57 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                                if arg1 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                            else:
                                if arg1 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if 0 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if arg1 > 0:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                                if arg1 > uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                            else:
                                if arg1 > (uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                else:
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if 0 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_1d5c3f57 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    if not 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if arg1 > 0:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_1d5c3f57 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                            if arg1 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if arg1 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
        else:
            if 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]
            if sub_5ab971eb[address(arg2)].field_448:
                if sub_5ab971eb[address(arg3)].field_448:
                    if sub_5ab971eb[address(arg2)].field_448 > sub_5ab971eb[address(arg3)].field_448:
                        if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if 0 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if arg1 > 0:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                                if arg1 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                            else:
                                if arg1 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if 0 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if arg1 > 0:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                                if arg1 > uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                            else:
                                if arg1 > (uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                else:
                    if sub_5ab971eb[address(arg2)].field_448 > sub_1d5c3f57:
                        if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if 0 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if arg1 > 0:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                                if arg1 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                            else:
                                if arg1 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if 0 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_1d5c3f57 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if arg1 > 0:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_1d5c3f57 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                                if arg1 > uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                            else:
                                if arg1 > (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
            else:
                if sub_5ab971eb[address(arg3)].field_448:
                    if sub_1d5c3f57 > sub_5ab971eb[address(arg3)].field_448:
                        if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if 0 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_1d5c3f57 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if arg1 > 0:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_1d5c3f57 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                                if arg1 > uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                            else:
                                if arg1 > (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if 0 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint64(-sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                            if arg1 > 0:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                                if arg1 > uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                            else:
                                if arg1 > (uint64(sub_5ab971eb[address(arg3)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                    revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                else:
                    if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if 0 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(-sub_1d5c3f57 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 > arg1:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    if not 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]:
                        if arg1 > 0:
                            revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                    else:
                        if uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] != uint64(sub_1d5c3f57 + 10^18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32]) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18):
                            if arg1 > uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
                        else:
                            if arg1 > (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg3)].field_160 * ext_call.return_data[32] / 10^18) + 1:
                                revert with 0, 'WooGuardian: PRICE_UNRELIABLE'
}

function sub_2ab6f78f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not address(arg1):
        revert with 0, 'WooGuardian: fromToken_ZERO_ADDR'
    else:
        if not address(arg2):
            revert with 0, 'WooGuardian: toToken_ZERO_ADDR'
        else:
            if not sub_5ab971eb[address(arg1)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'WooGuardian: fromToken_RefOracle_INVALID'
            else:
                if not sub_5ab971eb[address(arg2)].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'WooGuardian: toToken_RefOracle_INVALID'
                else:
                    require ext_code.size(sub_5ab971eb[address(arg1)].field_0)
                    staticcall sub_5ab971eb[address(arg1)].field_0.latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] < 0:
                            revert with 0, 'WooGuardian: INVALID_CHAINLINK_PRICE'
                        else:
                            require ext_code.size(sub_5ab971eb[address(arg2)].field_0)
                            staticcall sub_5ab971eb[address(arg2)].field_0.latestRoundData() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 160
                                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                                if ext_call.return_data[32] < 0:
                                    revert with 0, 'WooGuardian: INVALID_CHAINLINK_QUOTE_PRICE'
                                else:
                                    if ext_call.return_data[32]:
                                        if sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / ext_call.return_data[32] != sub_5ab971eb[address(arg1)].field_160:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            if ext_call.return_data[32]:
                                                if sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / ext_call.return_data[32] != sub_5ab971eb[address(arg2)].field_160:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    if sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32]:
                                                        if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32]
                                                                if arg3:
                                                                    if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / arg3 != 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32]:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    else:
                                                                        if sub_5ab971eb[address(arg1)].field_448:
                                                                            if sub_5ab971eb[address(arg2)].field_448:
                                                                                if sub_5ab971eb[address(arg1)].field_448 > sub_5ab971eb[address(arg2)].field_448:
                                                                                    if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                                if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                    if uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if not (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                            if arg4 > uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                        else:
                                                                                                            if arg4 > (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                else:
                                                                                                    if arg4 > 0:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                    else:
                                                                                        if 0 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                else:
                                                                                    if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                                if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                    if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                            if arg4 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                        else:
                                                                                                            if arg4 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                else:
                                                                                                    if arg4 > 0:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                    else:
                                                                                        if 0 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                            else:
                                                                                if sub_5ab971eb[address(arg1)].field_448 > sub_1d5c3f57:
                                                                                    if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                                if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                    if uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if not (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                            if arg4 > uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                        else:
                                                                                                            if arg4 > (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                else:
                                                                                                    if arg4 > 0:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                    else:
                                                                                        if 0 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                else:
                                                                                    if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_1d5c3f57 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                                if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                    if uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if not (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                            if arg4 > uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                        else:
                                                                                                            if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                else:
                                                                                                    if arg4 > 0:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                    else:
                                                                                        if 0 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                        else:
                                                                            if sub_5ab971eb[address(arg2)].field_448:
                                                                                if sub_1d5c3f57 > sub_5ab971eb[address(arg2)].field_448:
                                                                                    if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_1d5c3f57 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                                if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                    if uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if not (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                            if arg4 > uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                        else:
                                                                                                            if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                else:
                                                                                                    if arg4 > 0:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                    else:
                                                                                        if 0 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                else:
                                                                                    if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                                if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                    if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                            if arg4 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                        else:
                                                                                                            if arg4 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                else:
                                                                                                    if arg4 > 0:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                    else:
                                                                                        if 0 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                            else:
                                                                                if sub_1d5c3f57 > sub_1d5c3f57:
                                                                                    if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_1d5c3f57 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                                if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                    if uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if not (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                            if arg4 > uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                        else:
                                                                                                            if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                else:
                                                                                                    if arg4 > 0:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                    else:
                                                                                        if 0 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                else:
                                                                                    if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_1d5c3f57 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if uint64(-sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                                if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                    if uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if not (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                            if arg4 > uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                        else:
                                                                                                            if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                            else:
                                                                                                else:
                                                                                                    if arg4 > 0:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                    else:
                                                                                        if 0 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                else:
                                                                    if sub_5ab971eb[address(arg1)].field_448:
                                                                        if sub_5ab971eb[address(arg2)].field_448:
                                                                            if sub_5ab971eb[address(arg1)].field_448 > sub_5ab971eb[address(arg2)].field_448:
                                                                                if 0 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                            else:
                                                                                if 0 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                        else:
                                                                            if sub_5ab971eb[address(arg1)].field_448 > sub_1d5c3f57:
                                                                                if 0 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                            else:
                                                                                if 0 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                    else:
                                                                        if sub_5ab971eb[address(arg2)].field_448:
                                                                            if sub_1d5c3f57 > sub_5ab971eb[address(arg2)].field_448:
                                                                                if 0 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                            else:
                                                                                if 0 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                        else:
                                                                            if sub_1d5c3f57 > sub_1d5c3f57:
                                                                                if 0 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                            else:
                                                                                if 0 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                    else:
                                                        if sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32]
                                                            if arg3:
                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / arg3 != 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32]:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if sub_5ab971eb[address(arg1)].field_448:
                                                                        if sub_5ab971eb[address(arg2)].field_448:
                                                                            if sub_5ab971eb[address(arg1)].field_448 > sub_5ab971eb[address(arg2)].field_448:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                else:
                                                                                    if 0 > arg4:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                            if uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if not (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                    if arg4 > uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                                else:
                                                                                                    if arg4 > (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                        else:
                                                                                            if arg4 > 0:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                            else:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                else:
                                                                                    if 0 > arg4:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                            if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                    if arg4 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                                else:
                                                                                                    if arg4 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                        else:
                                                                                            if arg4 > 0:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                        else:
                                                                            if sub_5ab971eb[address(arg1)].field_448 > sub_1d5c3f57:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                else:
                                                                                    if 0 > arg4:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                            if uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if not (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                    if arg4 > uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                                else:
                                                                                                    if arg4 > (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                        else:
                                                                                            if arg4 > 0:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                            else:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_1d5c3f57 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                else:
                                                                                    if 0 > arg4:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                            if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                    if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                                else:
                                                                                                    if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                        else:
                                                                                            if arg4 > 0:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                    else:
                                                                        if sub_5ab971eb[address(arg2)].field_448:
                                                                            if sub_1d5c3f57 > sub_5ab971eb[address(arg2)].field_448:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_1d5c3f57 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                else:
                                                                                    if 0 > arg4:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                            if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                    if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                                else:
                                                                                                    if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                        else:
                                                                                            if arg4 > 0:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                            else:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                else:
                                                                                    if 0 > arg4:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                            if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                    if arg4 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                                else:
                                                                                                    if arg4 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                        else:
                                                                                            if arg4 > 0:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                        else:
                                                                            if sub_1d5c3f57 > sub_1d5c3f57:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_1d5c3f57 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                else:
                                                                                    if 0 > arg4:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                            if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                    if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                                else:
                                                                                                    if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                        else:
                                                                                            if arg4 > 0:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                            else:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_1d5c3f57 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                                            if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                                if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                        if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                                    else:
                                                                                                        if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                        else:
                                                                                            else:
                                                                                                if arg4 > 0:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                else:
                                                                                    if 0 > arg4:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                            if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                    if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                                else:
                                                                                                    if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                    else:
                                                                                        else:
                                                                                            if arg4 > 0:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                            else:
                                                                if sub_5ab971eb[address(arg1)].field_448:
                                                                    if sub_5ab971eb[address(arg2)].field_448:
                                                                        if sub_5ab971eb[address(arg1)].field_448 > sub_5ab971eb[address(arg2)].field_448:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if arg4 > 0:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                        else:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if arg4 > 0:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                    else:
                                                                        if sub_5ab971eb[address(arg1)].field_448 > sub_1d5c3f57:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if arg4 > 0:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                        else:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if arg4 > 0:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                else:
                                                                    if sub_5ab971eb[address(arg2)].field_448:
                                                                        if sub_1d5c3f57 > sub_5ab971eb[address(arg2)].field_448:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if arg4 > 0:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                        else:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if arg4 > 0:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                    else:
                                                                        if sub_1d5c3f57 > sub_1d5c3f57:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if arg4 > 0:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                        else:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if arg4 > 0:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                            else:
                                                if not sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32]:
                                                    revert with 0, 'SafeMath: division by zero'
                                                else:
                                                    if 10^18 * sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] / sub_5ab971eb[address(arg1)].field_160 * ext_call.return_data[32] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        revert with 0, 'SafeMath: division by zero'
                                    else:
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        else:
                                            if sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] / ext_call.return_data[32] != sub_5ab971eb[address(arg2)].field_160:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                if sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                else:
                                                    require sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32]
                                                    if arg3:
                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / arg3 != 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if sub_5ab971eb[address(arg1)].field_448:
                                                                if sub_5ab971eb[address(arg2)].field_448:
                                                                    if sub_5ab971eb[address(arg1)].field_448 > sub_5ab971eb[address(arg2)].field_448:
                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                            if uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if not (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                if arg4 > uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                            else:
                                                                                                if arg4 > (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                    else:
                                                                                        if arg4 > 0:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                        else:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if not (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                            if arg4 > uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                        else:
                                                                                            if arg4 > (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                    else:
                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                            if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                if arg4 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                            else:
                                                                                                if arg4 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                    else:
                                                                                        if arg4 > 0:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                        else:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                            if arg4 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                        else:
                                                                                            if arg4 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                else:
                                                                    if sub_5ab971eb[address(arg1)].field_448 > sub_1d5c3f57:
                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                            if uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if uint64(-sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if not (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                if arg4 > uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                            else:
                                                                                                if arg4 > (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                    else:
                                                                                        if arg4 > 0:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                        else:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if not (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                            if arg4 > uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                        else:
                                                                                            if arg4 > (uint64(sub_5ab971eb[address(arg1)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                    else:
                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                            if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_1d5c3f57 + 10^18):
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                            else:
                                                                                                if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                    else:
                                                                                        if arg4 > 0:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                        else:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                            if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                        else:
                                                                                            if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                            else:
                                                                if sub_5ab971eb[address(arg2)].field_448:
                                                                    if sub_1d5c3f57 > sub_5ab971eb[address(arg2)].field_448:
                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                            if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_1d5c3f57 + 10^18):
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                            else:
                                                                                                if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                    else:
                                                                                        if arg4 > 0:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                        else:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                            if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                        else:
                                                                                            if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                    else:
                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                            if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if uint64(-sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                if arg4 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                            else:
                                                                                                if arg4 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                    else:
                                                                                        if arg4 > 0:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                        else:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if not (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                            if arg4 > uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                        else:
                                                                                            if arg4 > (uint64(sub_5ab971eb[address(arg2)].field_448 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                else:
                                                                    if sub_1d5c3f57 > sub_1d5c3f57:
                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                            if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_1d5c3f57 + 10^18):
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                            else:
                                                                                                if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                    else:
                                                                                        if arg4 > 0:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                        else:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                            if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                        else:
                                                                                            if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                                    else:
                                                                        if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                            if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(-sub_1d5c3f57 + 10^18):
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if uint64(-sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18 > arg4:
                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                else:
                                                                                    if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                        if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                                if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                            else:
                                                                                                if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                    revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                                else:
                                                                                    else:
                                                                                        if arg4 > 0:
                                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                        else:
                                                                        else:
                                                                            if 0 > arg4:
                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                            else:
                                                                                if 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18:
                                                                                    if uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 != uint64(sub_1d5c3f57 + 10^18):
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if not (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18) - (10^18 * uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18):
                                                                                            if arg4 > uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                        else:
                                                                                            if arg4 > (uint64(sub_1d5c3f57 + 10^18) * 0 / sub_5ab971eb[address(arg2)].field_160 * ext_call.return_data[32] * arg3 / 10^18 / 10^18) + 1:
                                                                                                revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                            else:
                                                                                else:
                                                                                    if arg4 > 0:
                                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                                    else:
                                                    else:
                                                        if sub_5ab971eb[address(arg1)].field_448:
                                                            if sub_5ab971eb[address(arg2)].field_448:
                                                                if sub_5ab971eb[address(arg1)].field_448 > sub_5ab971eb[address(arg2)].field_448:
                                                                    if 0 > arg4:
                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                    else:
                                                                        if arg4 > 0:
                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                        else:
                                                                else:
                                                                    if 0 > arg4:
                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                    else:
                                                                        if arg4 > 0:
                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                        else:
                                                            else:
                                                                if sub_5ab971eb[address(arg1)].field_448 > sub_1d5c3f57:
                                                                    if 0 > arg4:
                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                    else:
                                                                        if arg4 > 0:
                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                        else:
                                                                else:
                                                                    if 0 > arg4:
                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                    else:
                                                                        if arg4 > 0:
                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                        else:
                                                        else:
                                                            if sub_5ab971eb[address(arg2)].field_448:
                                                                if sub_1d5c3f57 > sub_5ab971eb[address(arg2)].field_448:
                                                                    if 0 > arg4:
                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                    else:
                                                                        if arg4 > 0:
                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                        else:
                                                                else:
                                                                    if 0 > arg4:
                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                    else:
                                                                        if arg4 > 0:
                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                        else:
                                                            else:
                                                                if sub_1d5c3f57 > sub_1d5c3f57:
                                                                    if 0 > arg4:
                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                    else:
                                                                        if arg4 > 0:
                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                        else:
                                                                else:
                                                                    if 0 > arg4:
                                                                        revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                    else:
                                                                        if arg4 > 0:
                                                                            revert with 0, 'WooGuardian: TO_AMOUNT_UNRELIABLE'
                                                                        else:
}



}
