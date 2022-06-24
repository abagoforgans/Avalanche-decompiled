contract main {




// =====================  Runtime code  =====================


address _OWNER_;
uint8 stor1; offset 160
address _NEW_OWNER_;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 totalSupply;
uint256 tradeBurnRatio;
uint256 tradeFeeRatio;
address teamAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() payable {
    return name[0 len name.length]
}

function _OWNER_() payable {
    return _OWNER_
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function team() payable {
    return teamAddress
}

function tradeFeeRatio() payable {
    return tradeFeeRatio
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function tradeBurnRatio() payable {
    return tradeBurnRatio
}

function _fallback() payable {
    revert
}

function initOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1:
        revert with 0, 'DODO_INITIALIZED'
    stor1 = 1
    _OWNER_ = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function sub_b4c50ff4(?) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if arg1:
        revert with 0, 'NOT_ZERO_ADDRESS'
    emit OwnershipTransferred(_OWNER_, 0);
    _OWNER_ = 0
}

function changeTeamAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if tradeFeeRatio <= 0:
        revert with 0, 'NOT_TRADE_FEE_TOKEN'
    emit ChangeTeam(teamAddress, arg1);
    teamAddress = arg1
}

function sub_4ca60825(?) payable {
    require calldata.size - 4 >= 256
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor1:
        revert with 0, 'DODO_INITIALIZED'
    stor1 = 1
    _OWNER_ = arg1
    name[] = Array(len=arg3.length, data=arg3[all])
    symbol[] = Array(len=arg4.length, data=arg4[all])
    decimals = arg5
    totalSupply = arg2
    balanceOf[address(arg1)] = arg2
    if arg6 > 5000:
        revert with 0, 'TRADE_BURN_RATIO_INVALID'
    if arg7 > 5000:
        revert with 0, 'TRADE_FEE_RATIO_INVALID'
    tradeBurnRatio = arg6
    tradeFeeRatio = arg7
    teamAddress = arg8
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
    emit 0x65ddf252: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)], 0, arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xef45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[202 len 26]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SUB_ERROR'
    balanceOf[address(msg.sender)] -= arg2
    if not tradeBurnRatio:
        if not tradeFeeRatio:
            if 0 > arg2:
                revert with 0, 'SUB_ERROR'
            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                revert with 0, 'ADD_ERROR'
            balanceOf[address(arg1)] += arg2
            emit 0x65ddf252: arg2, msg.sender, arg1
        else:
            if not arg2:
                if balanceOf[stor8] < balanceOf[stor8]:
                    revert with 0, 'ADD_ERROR'
                emit 0x65ddf252: 0, msg.sender, teamAddress
                if 0 > arg2:
                    revert with 0, 'SUB_ERROR'
                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg1)] += arg2
                emit 0x65ddf252: arg2, msg.sender, arg1
            else:
                if tradeFeeRatio * arg2 / arg2 != tradeFeeRatio:
                    revert with 0, 'MUL_ERROR'
                if (tradeFeeRatio * arg2 / 10000) + balanceOf[stor8] < balanceOf[stor8]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[stor8] += tradeFeeRatio * arg2 / 10000
                emit 0x65ddf252: (tradeFeeRatio * arg2 / 10000), msg.sender, teamAddress
                if 0 > arg2:
                    revert with 0, 'SUB_ERROR'
                if tradeFeeRatio * arg2 / 10000 > arg2:
                    revert with 0, 'SUB_ERROR'
                if arg2 - (tradeFeeRatio * arg2 / 10000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg1)] = arg2 - (tradeFeeRatio * arg2 / 10000) + balanceOf[address(arg1)]
                emit 0x65ddf252: (arg2 - (tradeFeeRatio * arg2 / 10000)), msg.sender, arg1
    else:
        if not arg2:
            if balanceOf[0] < balanceOf[0]:
                revert with 0, 'ADD_ERROR'
            emit 0x65ddf252: 0, msg.sender, 0
            if not tradeFeeRatio:
                if 0 > arg2:
                    revert with 0, 'SUB_ERROR'
                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg1)] += arg2
                emit 0x65ddf252: arg2, msg.sender, arg1
            else:
                if not arg2:
                    if balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'ADD_ERROR'
                    emit 0x65ddf252: 0, msg.sender, teamAddress
                    if 0 > arg2:
                        revert with 0, 'SUB_ERROR'
                    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg1)] += arg2
                    emit 0x65ddf252: arg2, msg.sender, arg1
                else:
                    if tradeFeeRatio * arg2 / arg2 != tradeFeeRatio:
                        revert with 0, 'MUL_ERROR'
                    if (tradeFeeRatio * arg2 / 10000) + balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[stor8] += tradeFeeRatio * arg2 / 10000
                    emit 0x65ddf252: (tradeFeeRatio * arg2 / 10000), msg.sender, teamAddress
                    if 0 > arg2:
                        revert with 0, 'SUB_ERROR'
                    if tradeFeeRatio * arg2 / 10000 > arg2:
                        revert with 0, 'SUB_ERROR'
                    if arg2 - (tradeFeeRatio * arg2 / 10000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg1)] = arg2 - (tradeFeeRatio * arg2 / 10000) + balanceOf[address(arg1)]
                    emit 0x65ddf252: (arg2 - (tradeFeeRatio * arg2 / 10000)), msg.sender, arg1
        else:
            if tradeBurnRatio * arg2 / arg2 != tradeBurnRatio:
                revert with 0, 'MUL_ERROR'
            if (tradeBurnRatio * arg2 / 10000) + balanceOf[0] < balanceOf[0]:
                revert with 0, 'ADD_ERROR'
            balanceOf[0] += tradeBurnRatio * arg2 / 10000
            emit 0x65ddf252: (tradeBurnRatio * arg2 / 10000), msg.sender, 0
            if not tradeFeeRatio:
                if tradeBurnRatio * arg2 / 10000 > arg2:
                    revert with 0, 'SUB_ERROR'
                if 0 > arg2 - (tradeBurnRatio * arg2 / 10000):
                    revert with 0, 'SUB_ERROR'
                if arg2 - (tradeBurnRatio * arg2 / 10000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg1)] = arg2 - (tradeBurnRatio * arg2 / 10000) + balanceOf[address(arg1)]
                emit 0x65ddf252: (arg2 - (tradeBurnRatio * arg2 / 10000)), msg.sender, arg1
            else:
                if not arg2:
                    if balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'ADD_ERROR'
                    emit 0x65ddf252: 0, msg.sender, teamAddress
                    if tradeBurnRatio * arg2 / 10000 > arg2:
                        revert with 0, 'SUB_ERROR'
                    if 0 > arg2 - (tradeBurnRatio * arg2 / 10000):
                        revert with 0, 'SUB_ERROR'
                    if arg2 - (tradeBurnRatio * arg2 / 10000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg1)] = arg2 - (tradeBurnRatio * arg2 / 10000) + balanceOf[address(arg1)]
                    emit 0x65ddf252: (arg2 - (tradeBurnRatio * arg2 / 10000)), msg.sender, arg1
                else:
                    if tradeFeeRatio * arg2 / arg2 != tradeFeeRatio:
                        revert with 0, 'MUL_ERROR'
                    if (tradeFeeRatio * arg2 / 10000) + balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[stor8] += tradeFeeRatio * arg2 / 10000
                    emit 0x65ddf252: (tradeFeeRatio * arg2 / 10000), msg.sender, teamAddress
                    if tradeBurnRatio * arg2 / 10000 > arg2:
                        revert with 0, 'SUB_ERROR'
                    if tradeFeeRatio * arg2 / 10000 > arg2 - (tradeBurnRatio * arg2 / 10000):
                        revert with 0, 'SUB_ERROR'
                    if arg2 - (tradeBurnRatio * arg2 / 10000) - (tradeFeeRatio * arg2 / 10000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg1)] = arg2 - (tradeBurnRatio * arg2 / 10000) - (tradeFeeRatio * arg2 / 10000) + balanceOf[address(arg1)]
                    emit 0x65ddf252: (arg2 - (tradeBurnRatio * arg2 / 10000) - (tradeFeeRatio * arg2 / 10000)), msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'ALLOWANCE_NOT_ENOUGH'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xef45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[202 len 26]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SUB_ERROR'
    balanceOf[address(arg1)] -= arg3
    if not tradeBurnRatio:
        if not tradeFeeRatio:
            if 0 > arg3:
                revert with 0, 'SUB_ERROR'
            if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                revert with 0, 'ADD_ERROR'
            balanceOf[address(arg2)] += arg3
            emit 0x65ddf252: arg3, arg1, arg2
        else:
            if not arg3:
                if balanceOf[stor8] < balanceOf[stor8]:
                    revert with 0, 'ADD_ERROR'
                emit 0x65ddf252: 0, arg1, teamAddress
                if 0 > arg3:
                    revert with 0, 'SUB_ERROR'
                if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg2)] += arg3
                emit 0x65ddf252: arg3, arg1, arg2
            else:
                if tradeFeeRatio * arg3 / arg3 != tradeFeeRatio:
                    revert with 0, 'MUL_ERROR'
                if (tradeFeeRatio * arg3 / 10000) + balanceOf[stor8] < balanceOf[stor8]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[stor8] += tradeFeeRatio * arg3 / 10000
                emit 0x65ddf252: (tradeFeeRatio * arg3 / 10000), arg1, teamAddress
                if 0 > arg3:
                    revert with 0, 'SUB_ERROR'
                if tradeFeeRatio * arg3 / 10000 > arg3:
                    revert with 0, 'SUB_ERROR'
                if arg3 - (tradeFeeRatio * arg3 / 10000) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg2)] = arg3 - (tradeFeeRatio * arg3 / 10000) + balanceOf[address(arg2)]
                emit 0x65ddf252: (arg3 - (tradeFeeRatio * arg3 / 10000)), arg1, arg2
    else:
        if not arg3:
            if balanceOf[0] < balanceOf[0]:
                revert with 0, 'ADD_ERROR'
            emit 0x65ddf252: 0, arg1, 0
            if not tradeFeeRatio:
                if 0 > arg3:
                    revert with 0, 'SUB_ERROR'
                if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg2)] += arg3
                emit 0x65ddf252: arg3, arg1, arg2
            else:
                if not arg3:
                    if balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'ADD_ERROR'
                    emit 0x65ddf252: 0, arg1, teamAddress
                    if 0 > arg3:
                        revert with 0, 'SUB_ERROR'
                    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg2)] += arg3
                    emit 0x65ddf252: arg3, arg1, arg2
                else:
                    if tradeFeeRatio * arg3 / arg3 != tradeFeeRatio:
                        revert with 0, 'MUL_ERROR'
                    if (tradeFeeRatio * arg3 / 10000) + balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[stor8] += tradeFeeRatio * arg3 / 10000
                    emit 0x65ddf252: (tradeFeeRatio * arg3 / 10000), arg1, teamAddress
                    if 0 > arg3:
                        revert with 0, 'SUB_ERROR'
                    if tradeFeeRatio * arg3 / 10000 > arg3:
                        revert with 0, 'SUB_ERROR'
                    if arg3 - (tradeFeeRatio * arg3 / 10000) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg2)] = arg3 - (tradeFeeRatio * arg3 / 10000) + balanceOf[address(arg2)]
                    emit 0x65ddf252: (arg3 - (tradeFeeRatio * arg3 / 10000)), arg1, arg2
        else:
            if tradeBurnRatio * arg3 / arg3 != tradeBurnRatio:
                revert with 0, 'MUL_ERROR'
            if (tradeBurnRatio * arg3 / 10000) + balanceOf[0] < balanceOf[0]:
                revert with 0, 'ADD_ERROR'
            balanceOf[0] += tradeBurnRatio * arg3 / 10000
            emit 0x65ddf252: (tradeBurnRatio * arg3 / 10000), arg1, 0
            if not tradeFeeRatio:
                if tradeBurnRatio * arg3 / 10000 > arg3:
                    revert with 0, 'SUB_ERROR'
                if 0 > arg3 - (tradeBurnRatio * arg3 / 10000):
                    revert with 0, 'SUB_ERROR'
                if arg3 - (tradeBurnRatio * arg3 / 10000) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg2)] = arg3 - (tradeBurnRatio * arg3 / 10000) + balanceOf[address(arg2)]
                emit 0x65ddf252: (arg3 - (tradeBurnRatio * arg3 / 10000)), arg1, arg2
            else:
                if not arg3:
                    if balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'ADD_ERROR'
                    emit 0x65ddf252: 0, arg1, teamAddress
                    if tradeBurnRatio * arg3 / 10000 > arg3:
                        revert with 0, 'SUB_ERROR'
                    if 0 > arg3 - (tradeBurnRatio * arg3 / 10000):
                        revert with 0, 'SUB_ERROR'
                    if arg3 - (tradeBurnRatio * arg3 / 10000) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg2)] = arg3 - (tradeBurnRatio * arg3 / 10000) + balanceOf[address(arg2)]
                    emit 0x65ddf252: (arg3 - (tradeBurnRatio * arg3 / 10000)), arg1, arg2
                else:
                    if tradeFeeRatio * arg3 / arg3 != tradeFeeRatio:
                        revert with 0, 'MUL_ERROR'
                    if (tradeFeeRatio * arg3 / 10000) + balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[stor8] += tradeFeeRatio * arg3 / 10000
                    emit 0x65ddf252: (tradeFeeRatio * arg3 / 10000), arg1, teamAddress
                    if tradeBurnRatio * arg3 / 10000 > arg3:
                        revert with 0, 'SUB_ERROR'
                    if tradeFeeRatio * arg3 / 10000 > arg3 - (tradeBurnRatio * arg3 / 10000):
                        revert with 0, 'SUB_ERROR'
                    if arg3 - (tradeBurnRatio * arg3 / 10000) - (tradeFeeRatio * arg3 / 10000) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg2)] = arg3 - (tradeBurnRatio * arg3 / 10000) - (tradeFeeRatio * arg3 / 10000) + balanceOf[address(arg2)]
                    emit 0x65ddf252: (arg3 - (tradeBurnRatio * arg3 / 10000) - (tradeFeeRatio * arg3 / 10000)), arg1, arg2
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SUB_ERROR'
    allowance[address(arg1)][msg.sender] -= arg3
    return 1
}



}
