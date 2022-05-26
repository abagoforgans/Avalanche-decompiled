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
uint8 stor8; offset 160
uint128 stor8; offset 160
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

function isMintable() payable {
    return bool(uint8(stor8.field_160))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg1 == arg1
    require arg2 == arg2
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
    require arg1 == arg1
    if stor1:
        revert with 0, 'DODO_INITIALIZED'
    stor1 = 1
    _OWNER_ = arg1
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function changeTeamAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if tradeFeeRatio <= 0:
        revert with 0, 'NOT_TRADE_FEE_TOKEN'
    emit ChangeTeam(teamAddress, arg1);
    teamAddress = arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor8.field_160):
        revert with 0, 'NOT_MINTABLE_TOKEN'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'VALUE_NOT_ENOUGH'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'SUB_ERROR'
    balanceOf[msg.sender] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SUB_ERROR'
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit 0xfeddf252: arg1, msg.sender, 0
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not uint8(stor8.field_160):
        revert with 0, 'NOT_MINTABLE_TOKEN'
    if _OWNER_ != arg1:
        revert with 0, 'NOT_OWNER'
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'ADD_ERROR'
    balanceOf[address(arg1)] += arg2
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'ADD_ERROR'
    totalSupply += arg2
    emit Mint(arg2, arg1);
    emit 0xfeddf252: arg2, 0, arg1
}

function init(address arg1, uint256 arg2, string arg3, string arg4, uint8 arg5, uint256 arg6, uint256 arg7, address arg8, bool arg9) payable {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require calldata.size >= arg3.length + arg3 + 36
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 160 >= 128 and ceil32(arg3.length) + ceil32(arg4.length) + 160 <= test266151307()
    require calldata.size >= arg4.length + arg4 + 36
    require arg5 == arg5
    require arg8 == arg8
    require arg9 == arg9
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
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg9)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
    emit 0xfeddf252: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)], 0, arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
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
        else:
            if not arg2:
                if balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
                    revert with 0, 'ADD_ERROR'
                if 0 > arg2:
                    revert with 0, 'SUB_ERROR'
                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg1)] += arg2
            else:
                if tradeFeeRatio * arg2 / arg2 != tradeFeeRatio:
                    revert with 0, 'MUL_ERROR'
                if (tradeFeeRatio * arg2 / 10000) + balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(stor8.field_0)] += tradeFeeRatio * arg2 / 10000
                if 0 > arg2:
                    revert with 0, 'SUB_ERROR'
                if tradeFeeRatio * arg2 / 10000 > arg2:
                    revert with 0, 'SUB_ERROR'
                if arg2 - (tradeFeeRatio * arg2 / 10000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg1)] = arg2 - (tradeFeeRatio * arg2 / 10000) + balanceOf[address(arg1)]
    else:
        if not arg2:
            if balanceOf[0] < balanceOf[0]:
                revert with 0, 'ADD_ERROR'
            if not tradeFeeRatio:
                if 0 > arg2:
                    revert with 0, 'SUB_ERROR'
                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg1)] += arg2
            else:
                if not arg2:
                    if balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
                        revert with 0, 'ADD_ERROR'
                    if 0 > arg2:
                        revert with 0, 'SUB_ERROR'
                    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg1)] += arg2
                else:
                    if tradeFeeRatio * arg2 / arg2 != tradeFeeRatio:
                        revert with 0, 'MUL_ERROR'
                    if (tradeFeeRatio * arg2 / 10000) + balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(stor8.field_0)] += tradeFeeRatio * arg2 / 10000
                    if 0 > arg2:
                        revert with 0, 'SUB_ERROR'
                    if tradeFeeRatio * arg2 / 10000 > arg2:
                        revert with 0, 'SUB_ERROR'
                    if arg2 - (tradeFeeRatio * arg2 / 10000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg1)] = arg2 - (tradeFeeRatio * arg2 / 10000) + balanceOf[address(arg1)]
        else:
            if tradeBurnRatio * arg2 / arg2 != tradeBurnRatio:
                revert with 0, 'MUL_ERROR'
            if (tradeBurnRatio * arg2 / 10000) + balanceOf[0] < balanceOf[0]:
                revert with 0, 'ADD_ERROR'
            balanceOf[0] += tradeBurnRatio * arg2 / 10000
            if not tradeFeeRatio:
                if tradeBurnRatio * arg2 / 10000 > arg2:
                    revert with 0, 'SUB_ERROR'
                if 0 > arg2 - (tradeBurnRatio * arg2 / 10000):
                    revert with 0, 'SUB_ERROR'
                if arg2 - (tradeBurnRatio * arg2 / 10000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg1)] = arg2 - (tradeBurnRatio * arg2 / 10000) + balanceOf[address(arg1)]
            else:
                if not arg2:
                    if balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
                        revert with 0, 'ADD_ERROR'
                    if tradeBurnRatio * arg2 / 10000 > arg2:
                        revert with 0, 'SUB_ERROR'
                    if 0 > arg2 - (tradeBurnRatio * arg2 / 10000):
                        revert with 0, 'SUB_ERROR'
                    if arg2 - (tradeBurnRatio * arg2 / 10000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg1)] = arg2 - (tradeBurnRatio * arg2 / 10000) + balanceOf[address(arg1)]
                else:
                    if tradeFeeRatio * arg2 / arg2 != tradeFeeRatio:
                        revert with 0, 'MUL_ERROR'
                    if (tradeFeeRatio * arg2 / 10000) + balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(stor8.field_0)] += tradeFeeRatio * arg2 / 10000
                    if tradeBurnRatio * arg2 / 10000 > arg2:
                        revert with 0, 'SUB_ERROR'
                    if tradeFeeRatio * arg2 / 10000 > arg2 - (tradeBurnRatio * arg2 / 10000):
                        revert with 0, 'SUB_ERROR'
                    if arg2 - (tradeBurnRatio * arg2 / 10000) - (tradeFeeRatio * arg2 / 10000) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg1)] = arg2 - (tradeBurnRatio * arg2 / 10000) - (tradeFeeRatio * arg2 / 10000) + balanceOf[address(arg1)]
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'ALLOWANCE_NOT_ENOUGH'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
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
        else:
            if not arg3:
                if balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
                    revert with 0, 'ADD_ERROR'
                if 0 > arg3:
                    revert with 0, 'SUB_ERROR'
                if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg2)] += arg3
            else:
                if tradeFeeRatio * arg3 / arg3 != tradeFeeRatio:
                    revert with 0, 'MUL_ERROR'
                if (tradeFeeRatio * arg3 / 10000) + balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(stor8.field_0)] += tradeFeeRatio * arg3 / 10000
                if 0 > arg3:
                    revert with 0, 'SUB_ERROR'
                if tradeFeeRatio * arg3 / 10000 > arg3:
                    revert with 0, 'SUB_ERROR'
                if arg3 - (tradeFeeRatio * arg3 / 10000) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg2)] = arg3 - (tradeFeeRatio * arg3 / 10000) + balanceOf[address(arg2)]
    else:
        if not arg3:
            if balanceOf[0] < balanceOf[0]:
                revert with 0, 'ADD_ERROR'
            if not tradeFeeRatio:
                if 0 > arg3:
                    revert with 0, 'SUB_ERROR'
                if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg2)] += arg3
            else:
                if not arg3:
                    if balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
                        revert with 0, 'ADD_ERROR'
                    if 0 > arg3:
                        revert with 0, 'SUB_ERROR'
                    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg2)] += arg3
                else:
                    if tradeFeeRatio * arg3 / arg3 != tradeFeeRatio:
                        revert with 0, 'MUL_ERROR'
                    if (tradeFeeRatio * arg3 / 10000) + balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(stor8.field_0)] += tradeFeeRatio * arg3 / 10000
                    if 0 > arg3:
                        revert with 0, 'SUB_ERROR'
                    if tradeFeeRatio * arg3 / 10000 > arg3:
                        revert with 0, 'SUB_ERROR'
                    if arg3 - (tradeFeeRatio * arg3 / 10000) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg2)] = arg3 - (tradeFeeRatio * arg3 / 10000) + balanceOf[address(arg2)]
        else:
            if tradeBurnRatio * arg3 / arg3 != tradeBurnRatio:
                revert with 0, 'MUL_ERROR'
            if (tradeBurnRatio * arg3 / 10000) + balanceOf[0] < balanceOf[0]:
                revert with 0, 'ADD_ERROR'
            balanceOf[0] += tradeBurnRatio * arg3 / 10000
            if not tradeFeeRatio:
                if tradeBurnRatio * arg3 / 10000 > arg3:
                    revert with 0, 'SUB_ERROR'
                if 0 > arg3 - (tradeBurnRatio * arg3 / 10000):
                    revert with 0, 'SUB_ERROR'
                if arg3 - (tradeBurnRatio * arg3 / 10000) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'ADD_ERROR'
                balanceOf[address(arg2)] = arg3 - (tradeBurnRatio * arg3 / 10000) + balanceOf[address(arg2)]
            else:
                if not arg3:
                    if balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
                        revert with 0, 'ADD_ERROR'
                    if tradeBurnRatio * arg3 / 10000 > arg3:
                        revert with 0, 'SUB_ERROR'
                    if 0 > arg3 - (tradeBurnRatio * arg3 / 10000):
                        revert with 0, 'SUB_ERROR'
                    if arg3 - (tradeBurnRatio * arg3 / 10000) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg2)] = arg3 - (tradeBurnRatio * arg3 / 10000) + balanceOf[address(arg2)]
                else:
                    if tradeFeeRatio * arg3 / arg3 != tradeFeeRatio:
                        revert with 0, 'MUL_ERROR'
                    if (tradeFeeRatio * arg3 / 10000) + balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(stor8.field_0)] += tradeFeeRatio * arg3 / 10000
                    if tradeBurnRatio * arg3 / 10000 > arg3:
                        revert with 0, 'SUB_ERROR'
                    if tradeFeeRatio * arg3 / 10000 > arg3 - (tradeBurnRatio * arg3 / 10000):
                        revert with 0, 'SUB_ERROR'
                    if arg3 - (tradeBurnRatio * arg3 / 10000) - (tradeFeeRatio * arg3 / 10000) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                        revert with 0, 'ADD_ERROR'
                    balanceOf[address(arg2)] = arg3 - (tradeBurnRatio * arg3 / 10000) - (tradeFeeRatio * arg3 / 10000) + balanceOf[address(arg2)]
    emit 0xfeddf252: arg3, arg1, arg2
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SUB_ERROR'
    allowance[address(arg1)][msg.sender] -= arg3
    return 1
}



}
