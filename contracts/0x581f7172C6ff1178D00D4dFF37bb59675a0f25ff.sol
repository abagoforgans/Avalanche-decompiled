contract main {




// =====================  Runtime code  =====================


#
#  - redeem(address arg1, uint256 arg2)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - claimReward(address arg1)
#
const targetSupply = -1

const decimals = 9

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9


mapping of uint8 stor0;
uint256 stor1;
uint256 snipersCaught;
uint8 stor3; offset 16
uint8 stor3; offset 24
uint256 stor3; offset 8
mapping of uint256 nonces;
uint256 DOMAIN_SEPARATOR;
array of struct stor6;
array of struct stor7;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 mintingEnabled; offset 160
uint128 stor11; offset 160
address owner;
address stableTokenAddress;
address sub_87cd5989Address;
address dexRouterAddress;
uint128 stor15; offset 160
address sub_15aae2a4Address;
address stor16;
address stor17;
address stor18;
address stor19;
address stor20;
uint256 stor21;
uint256 dripRate;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint8 stor26; offset 24
uint32 stor26;
uint32 stor26;
uint256 stor27;
mapping of uint256 stor28;
uint256 sub_9423c3c0;
array of address stor30;
mapping of uint32 stor31;
array of address stor36516136433507714556481507284757523525550975291680945358964353894568634540880;

function dexRouter() payable {
    return dexRouterAddress
}

function isSniper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function sub_15aae2a4(?) payable {
    return sub_15aae2a4Address
}

function totalSupply() payable {
    return totalSupply
}

function sub_2ab821e3(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return stor30.length
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[address(arg1)]
}

function sub_87cd5989(?) payable {
    return sub_87cd5989Address
}

function owner() payable {
    return owner
}

function sub_9423c3c0(?) payable {
    return sub_9423c3c0
}

function mintingEnabled() payable {
    return bool(mintingEnabled)
}

function stableToken() payable {
    return stableTokenAddress
}

function dripRate() payable {
    return dripRate
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function snipersCaught() payable {
    return snipersCaught
}

function _fallback() payable {
    revert
}

function remainingMintableSupply() payable {
    if -1 < totalSupply:
        revert with 0, 17
    return (-totalSupply - 1)
}

function sub_4600712b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not sniper admin'
    stor1 = arg1
}

function sub_b6ef4e55(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    Mask(248, 0, stor3.field_8) = Mask(248, 0, bool(arg1))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_78acea1e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = Mask(96, 0, bool(arg1))
}

function sub_ff098f5c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'not sniper admin'
    Mask(248, 0, stor3.field_8) = Mask(248, 0, bool(arg1))
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function removeSniper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not sniper admin'
    if not stor0[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is not a recorded sniper.'
    stor0[address(arg1)] = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if allowance[msg.sender][address(arg1)] < arg2:
            revert with 0, 17
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if block.timestamp > arg4:
        revert with 0, 'ERC2612Permit: expired deadline'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ERC2612Permit: Invalid signature'
    if address(signer) != arg1:
        revert with 0, 'ERC2612Permit: Invalid signature'
    if nonces[address(arg1)] > -2:
        revert with 0, 17
    nonces[address(arg1)]++
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg2:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function name() payable {
    if bool(stor6.length):
        if not bool(stor6.length) - (uint255(stor6.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor6.length):
            if not bool(stor6.length) - (uint255(stor6.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if not bool(stor6.length) - (stor6.length.field_1 < 32):
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if not bool(stor6.length) - (stor6.length.field_1 < 32):
        revert with 0, 34
    if bool(stor6.length):
        if not bool(stor6.length) - (uint255(stor6.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if not bool(stor6.length) - (stor6.length.field_1 < 32):
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() payable {
    if bool(stor7.length):
        if not bool(stor7.length) - (uint255(stor7.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor7.length):
            if not bool(stor7.length) - (uint255(stor7.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor7.length):
                if 31 < uint255(stor7.length) * 0.5:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor7.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if not bool(stor7.length) - (stor7.length.field_1 < 32):
                revert with 0, 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(uint255(stor7.length) * 0.5) + 192 len ceil32(uint255(stor7.length) * 0.5)] = mem[128 len ceil32(uint255(stor7.length) * 0.5)]
        if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
            mem[ceil32(uint255(stor7.length) * 0.5) + (uint255(stor7.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)], mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor7.length) * 0.5)]), 
    if not bool(stor7.length) - (stor7.length.field_1 < 32):
        revert with 0, 34
    if bool(stor7.length):
        if not bool(stor7.length) - (uint255(stor7.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor7.length):
            if 31 < uint255(stor7.length) * 0.5:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while (uint255(stor7.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if not bool(stor7.length) - (stor7.length.field_1 < 32):
            revert with 0, 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function sub_e01bcd85(?) payable {
    require calldata.size - 4 >= 352
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    require arg9 == address(arg9)
    require arg10 == address(arg10)
    if uint8(stor3.field_24):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
        if not address(arg3):
            revert with 0, 'Invalid address supplied'
        if not address(arg4):
            revert with 0, 'Invalid address supplied'
        if not address(arg5):
            revert with 0, 'Invalid address supplied'
        if not address(arg6):
            revert with 0, 'Invalid address supplied'
        if not address(arg7):
            revert with 0, 'Invalid address supplied'
        if not address(arg8):
            revert with 0, 'Invalid address supplied'
        if not address(arg9):
            revert with 0, 'Invalid address supplied'
        if not address(arg10):
            revert with 0, 'Invalid address supplied'
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        if arg1.length <= 0:
            revert with 0, 'Description information must be set'
        if arg2.length <= 0:
            revert with 0, 'Description information must be set'
        if bool(stor6.length):
            if not bool(stor6.length) - (uint255(stor6.length) * 0.5 < 32):
                revert with 0, 34
            if arg1.length:
                stor6[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor6.length = 0
                idx = 0
                while (uint255(stor6.length) * 0.5) + 31 / 32 > idx:
                    stor6[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if not bool(stor6.length) - (stor6.length.field_1 < 32):
                revert with 0, 34
            if arg1.length:
                stor6[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor6.length = 0
                idx = 0
                while stor6.length.field_1 + 31 / 32 > idx:
                    stor6[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        if bool(stor7.length):
            if not bool(stor7.length) - (uint255(stor7.length) * 0.5 < 32):
                revert with 0, 34
            if arg2.length:
                stor7[].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor7.length = 0
                idx = 0
                while (uint255(stor7.length) * 0.5) + 31 / 32 > idx:
                    stor7[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if not bool(stor7.length) - (stor7.length.field_1 < 32):
                revert with 0, 34
            if arg2.length:
                stor7[].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor7.length = 0
                idx = 0
                while stor7.length.field_1 + 31 / 32 > idx:
                    stor7[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        dexRouterAddress = address(arg3)
        stableTokenAddress = address(arg4)
        sub_87cd5989Address = address(arg5)
        call address(arg5).0xf242ab41 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        sub_15aae2a4Address = ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor15 = Mask(96, 0, ext_call.return_data[12 len 20] == address(arg5))
        stor16 = address(arg6)
        stor17 = address(arg7)
        stor18 = address(arg8)
        stor19 = address(arg9)
        stor20 = address(arg10)
        sub_9423c3c0 = 0
        if arg11 >= -1:
            if stor24:
                revert with 0, 1
            stor21 = 0
            stor23 = arg11
        else:
            call sub_87cd5989Address.0x39e5362c with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !arg11:
                revert with 0, 17
            if stor24:
                revert with 0, 1
            stor21 = 0
            stor23 = ext_call.return_data[0] + arg11
        dripRate = 0
        stor26.field_0 % 16777216 = 24 * 3600
        uint8(stor26.field_24) = 0
        stor25 = sub_9423c3c0
        stor24 = -1
        if block.number > -1:
            revert with 0, 17
        if owner != msg.sender:
            revert with 0, 'not sniper admin'
        stor1 = block.number
        Mask(248, 0, stor3.field_8) = 0
        stor11 = 1
    else:
        if uint8(stor3.field_16) >= 1:
            revert with 0, 'Initializable: contract is already initialized'
        uint8(stor3.field_16) = 1
        uint8(stor3.field_24) = 1
        if not address(arg3):
            revert with 0, 'Invalid address supplied'
        if not address(arg4):
            revert with 0, 'Invalid address supplied'
        if not address(arg5):
            revert with 0, 'Invalid address supplied'
        if not address(arg6):
            revert with 0, 'Invalid address supplied'
        if not address(arg7):
            revert with 0, 'Invalid address supplied'
        if not address(arg8):
            revert with 0, 'Invalid address supplied'
        if not address(arg9):
            revert with 0, 'Invalid address supplied'
        if not address(arg10):
            revert with 0, 'Invalid address supplied'
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        if arg1.length <= 0:
            revert with 0, 'Description information must be set'
        if arg2.length <= 0:
            revert with 0, 'Description information must be set'
        if bool(stor6.length):
            if not bool(stor6.length) - (uint255(stor6.length) * 0.5 < 32):
                revert with 0, 34
            if arg1.length:
                stor6[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor6.length = 0
                idx = 0
                while (uint255(stor6.length) * 0.5) + 31 / 32 > idx:
                    stor6[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if not bool(stor6.length) - (stor6.length.field_1 < 32):
                revert with 0, 34
            if arg1.length:
                stor6[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor6.length = 0
                idx = 0
                while stor6.length.field_1 + 31 / 32 > idx:
                    stor6[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        if bool(stor7.length):
            if not bool(stor7.length) - (uint255(stor7.length) * 0.5 < 32):
                revert with 0, 34
            if arg2.length:
                stor7[].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor7.length = 0
                idx = 0
                while (uint255(stor7.length) * 0.5) + 31 / 32 > idx:
                    stor7[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if not bool(stor7.length) - (stor7.length.field_1 < 32):
                revert with 0, 34
            if arg2.length:
                stor7[].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor7.length = 0
                idx = 0
                while stor7.length.field_1 + 31 / 32 > idx:
                    stor7[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        dexRouterAddress = address(arg3)
        stableTokenAddress = address(arg4)
        sub_87cd5989Address = address(arg5)
        call address(arg5).0xf242ab41 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        sub_15aae2a4Address = ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        stor15 = Mask(96, 0, ext_call.return_data[12 len 20] == address(arg5))
        stor16 = address(arg6)
        stor17 = address(arg7)
        stor18 = address(arg8)
        stor19 = address(arg9)
        stor20 = address(arg10)
        sub_9423c3c0 = 0
        if arg11 >= -1:
            if stor24:
                revert with 0, 1
            stor21 = 0
            stor23 = arg11
        else:
            call sub_87cd5989Address.0x39e5362c with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !arg11:
                revert with 0, 17
            if stor24:
                revert with 0, 1
            stor21 = 0
            stor23 = ext_call.return_data[0] + arg11
        dripRate = 0
        stor26.field_0 % 16777216 = 24 * 3600
        uint8(stor26.field_24) = 0
        stor25 = sub_9423c3c0
        stor24 = -1
        if block.number > -1:
            revert with 0, 17
        if owner != msg.sender:
            revert with 0, 'not sniper admin'
        stor1 = block.number
        Mask(248, 0, stor3.field_8) = 0
        stor11 = 1
        uint8(stor3.field_24) = 0
        emit 0x7f26b83f: 1
}

function rewardBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_87cd5989Address.0x70a08231 with:
            gas gas_remaining wei
           args stor19
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < stor23:
        if not uint32(stor26.field_0):
            revert with 0, 18
        if 0 / uint32(stor26.field_0) and dripRate > -1 / 0 / uint32(stor26.field_0):
            revert with 0, 17
        if stor27 > !(0 / uint32(stor26.field_0) * dripRate):
            revert with 0, 17
        if stor25 >= stor27 + (0 / uint32(stor26.field_0) * dripRate):
            if not -stor21:
                return 0
            if 0 / uint32(stor26.field_0) * dripRate and balanceOf[address(arg1)] > -1 / 0 / uint32(stor26.field_0) * dripRate:
                revert with 0, 17
            if not stor21:
                revert with 0, 18
            if 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 'contrib'
            if 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21 > -stor28[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(arg1)] >= 0:
                revert with 0, 17
            if stor28[address(arg1)] < 0 and 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21 < -stor28[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if ext_call.return_data[0] >= stor28[address(arg1)] + (0 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21):
                return (stor28[address(arg1)] + (0 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21))
        else:
            if stor25 <= stor27:
                if not -stor21:
                    return 0
                if False and balanceOf[address(arg1)] > 0:
                    revert with 0, 17
                if not stor21:
                    revert with 0, 18
                if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'contrib'
                if 0 / stor21 > -stor28[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(arg1)] >= 0:
                    revert with 0, 17
                if stor28[address(arg1)] < 0 and 0 / stor21 < -stor28[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if ext_call.return_data[0] >= stor28[address(arg1)] + (0 / stor21):
                    return (stor28[address(arg1)] + (0 / stor21))
            else:
                if stor25 < stor27:
                    revert with 0, 17
                if not -stor21:
                    return 0
                if stor25 - stor27 and balanceOf[address(arg1)] > -1 / stor25 - stor27:
                    revert with 0, 17
                if not stor21:
                    revert with 0, 18
                if (stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'contrib'
                if (stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21 > -stor28[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(arg1)] >= 0:
                    revert with 0, 17
                if stor28[address(arg1)] < 0 and (stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21 < -stor28[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if ext_call.return_data[0] >= stor28[address(arg1)] + ((stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21):
                    return (stor28[address(arg1)] + ((stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21))
    else:
        if stor24 == -1:
            if block.timestamp < stor23:
                revert with 0, 17
            if not uint32(stor26.field_0):
                revert with 0, 18
            if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                revert with 0, 17
            if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                revert with 0, 17
            if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                if not -stor21:
                    return 0
                if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate and balanceOf[address(arg1)] > -1 / block.timestamp - stor23 / uint32(stor26.field_0) * dripRate:
                    revert with 0, 17
                if not stor21:
                    revert with 0, 18
                if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'contrib'
                if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21 > -stor28[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(arg1)] >= 0:
                    revert with 0, 17
                if stor28[address(arg1)] < 0 and block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21 < -stor28[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if ext_call.return_data[0] >= stor28[address(arg1)] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21):
                    return (stor28[address(arg1)] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21))
            else:
                if stor25 <= stor27:
                    if not -stor21:
                        return 0
                    if False and balanceOf[address(arg1)] > 0:
                        revert with 0, 17
                    if not stor21:
                        revert with 0, 18
                    if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if 0 / stor21 > -stor28[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(arg1)] >= 0:
                        revert with 0, 17
                    if stor28[address(arg1)] < 0 and 0 / stor21 < -stor28[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor28[address(arg1)] + (0 / stor21):
                        return (stor28[address(arg1)] + (0 / stor21))
                else:
                    if stor25 < stor27:
                        revert with 0, 17
                    if not -stor21:
                        return 0
                    if stor25 - stor27 and balanceOf[address(arg1)] > -1 / stor25 - stor27:
                        revert with 0, 17
                    if not stor21:
                        revert with 0, 18
                    if (stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if (stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21 > -stor28[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(arg1)] >= 0:
                        revert with 0, 17
                    if stor28[address(arg1)] < 0 and (stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21 < -stor28[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor28[address(arg1)] + ((stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21):
                        return (stor28[address(arg1)] + ((stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21))
        else:
            if block.timestamp < stor24:
                revert with 0, 17
            if not uint32(stor26.field_0):
                revert with 0, 18
            if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                revert with 0, 17
            if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                revert with 0, 17
            if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                if not -stor21:
                    return 0
                if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate and balanceOf[address(arg1)] > -1 / block.timestamp - stor24 / uint32(stor26.field_0) * dripRate:
                    revert with 0, 17
                if not stor21:
                    revert with 0, 18
                if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'contrib'
                if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21 > -stor28[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(arg1)] >= 0:
                    revert with 0, 17
                if stor28[address(arg1)] < 0 and block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21 < -stor28[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if ext_call.return_data[0] >= stor28[address(arg1)] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21):
                    return (stor28[address(arg1)] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(arg1)] / stor21))
            else:
                if stor25 <= stor27:
                    if not -stor21:
                        return 0
                    if False and balanceOf[address(arg1)] > 0:
                        revert with 0, 17
                    if not stor21:
                        revert with 0, 18
                    if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if 0 / stor21 > -stor28[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(arg1)] >= 0:
                        revert with 0, 17
                    if stor28[address(arg1)] < 0 and 0 / stor21 < -stor28[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor28[address(arg1)] + (0 / stor21):
                        return (stor28[address(arg1)] + (0 / stor21))
                else:
                    if stor25 < stor27:
                        revert with 0, 17
                    if not -stor21:
                        return 0
                    if stor25 - stor27 and balanceOf[address(arg1)] > -1 / stor25 - stor27:
                        revert with 0, 17
                    if not stor21:
                        revert with 0, 18
                    if (stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if (stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21 > -stor28[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(arg1)] >= 0:
                        revert with 0, 17
                    if stor28[address(arg1)] < 0 and (stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21 < -stor28[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor28[address(arg1)] + ((stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21):
                        return (stor28[address(arg1)] + ((stor25 * balanceOf[address(arg1)]) - (stor27 * balanceOf[address(arg1)]) / stor21))
    return ext_call.return_data[0]
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 > 0
    if totalSupply > !arg2:
        revert with 0, 17
    require totalSupply + arg2 <= -1
    if arg2 and 74 > -1 / arg2:
        revert with 0, 17
    call stableTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stableTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor16, 74 * arg2 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalSupply > !arg2:
        revert with 0, 17
    if test266151307() < stor30.length:
        revert with 0, 'DripRewarder: too many accounts'
    if not stor21:
        if stor30.length:
            revert with 0, 'addrlist'
        if not stor23 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            stor23 = block.timestamp
            stor24 = block.timestamp
    else:
        if stor24 == -1:
            if block.timestamp < stor23:
                idx = 0
                s = 0
                while uint32(idx) < stor30.length:
                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                        revert with 0, 17
                    if not -stor21:
                        mem[0] = address(stor30[uint32(idx)])
                        mem[32] = 28
                        stor28[address(stor30[uint32(idx)])] = 0
                    else:
                        if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                            revert with 0, 17
                        if not stor21:
                            revert with 0, 18
                        if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'contrib'
                        if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                            revert with 0, 17
                        if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                            revert with 0, 'DripRewarder: overflow'
                        if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'DripRewarder: overflow'
                        mem[0] = address(stor30[uint32(idx)])
                        mem[32] = 28
                        stor28[address(stor30[uint32(idx)])] += 0 / stor21
                    if not uint32(idx) - test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    s = s + balanceOf[address(stor30[uint32(idx)])]
                    continue 
            else:
                if stor24 == -1:
                    if block.timestamp < stor23:
                        revert with 0, 17
                    if not uint32(stor26.field_0):
                        revert with 0, 18
                    if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                        revert with 0, 17
                    if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                        revert with 0, 17
                    if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                        if not stor24 + 1:
                            stor24 = stor23
                        if not uint32(stor26.field_0):
                            revert with 0, 18
                        if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                            revert with 0, 17
                        if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                            revert with 0, 17
                        stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                        idx = 0
                        s = 0
                        while uint32(idx) < stor30.length:
                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                revert with 0, 17
                            if not -stor21:
                                mem[0] = address(stor30[uint32(idx)])
                                mem[32] = 28
                                stor28[address(stor30[uint32(idx)])] = 0
                            else:
                                if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor23 / uint32(stor26.field_0) * dripRate:
                                    revert with 0, 17
                                if not stor21:
                                    revert with 0, 18
                                if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'contrib'
                                if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                    revert with 0, 17
                                if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 17
                                if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                    revert with 0, 'DripRewarder: overflow'
                                if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'DripRewarder: overflow'
                                mem[0] = address(stor30[uint32(idx)])
                                mem[32] = 28
                                stor28[address(stor30[uint32(idx)])] += block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                            if not uint32(idx) - test266151307():
                                revert with 0, 17
                            idx = uint32(idx) + 1
                            s = s + balanceOf[address(stor30[uint32(idx)])]
                            continue 
                    else:
                        if stor25 <= stor27:
                            if not stor24 + 1:
                                stor24 = stor23
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                revert with 0, 17
                            stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                            idx = 0
                            s = 0
                            while uint32(idx) < stor30.length:
                                if s > !balanceOf[address(stor30[uint32(idx)])]:
                                    revert with 0, 17
                                if not -stor21:
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] = 0
                                else:
                                    if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                        revert with 0, 17
                                    if not stor21:
                                        revert with 0, 18
                                    if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'contrib'
                                    if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                        revert with 0, 17
                                    if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 17
                                    if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                        revert with 0, 'DripRewarder: overflow'
                                    if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'DripRewarder: overflow'
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                if not uint32(idx) - test266151307():
                                    revert with 0, 17
                                idx = uint32(idx) + 1
                                s = s + balanceOf[address(stor30[uint32(idx)])]
                                continue 
                        else:
                            if stor25 < stor27:
                                revert with 0, 17
                            if not stor24 + 1:
                                stor24 = stor23
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                revert with 0, 17
                            stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                            idx = 0
                            s = 0
                            while uint32(idx) < stor30.length:
                                if s > !balanceOf[address(stor30[uint32(idx)])]:
                                    revert with 0, 17
                                if not -stor21:
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] = 0
                                else:
                                    if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                        revert with 0, 17
                                    if not stor21:
                                        revert with 0, 18
                                    if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'contrib'
                                    if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                        revert with 0, 17
                                    if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 17
                                    if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                        revert with 0, 'DripRewarder: overflow'
                                    if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'DripRewarder: overflow'
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                if not uint32(idx) - test266151307():
                                    revert with 0, 17
                                idx = uint32(idx) + 1
                                s = s + balanceOf[address(stor30[uint32(idx)])]
                                continue 
                else:
                    if block.timestamp < stor24:
                        revert with 0, 17
                    if not uint32(stor26.field_0):
                        revert with 0, 18
                    if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                        revert with 0, 17
                    if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                        revert with 0, 17
                    if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                        if not stor24 + 1:
                            stor24 = stor23
                        if not uint32(stor26.field_0):
                            revert with 0, 18
                        if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                            revert with 0, 17
                        if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                            revert with 0, 17
                        stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                        idx = 0
                        s = 0
                        while uint32(idx) < stor30.length:
                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                revert with 0, 17
                            if not -stor21:
                                mem[0] = address(stor30[uint32(idx)])
                                mem[32] = 28
                                stor28[address(stor30[uint32(idx)])] = 0
                            else:
                                if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor24 / uint32(stor26.field_0) * dripRate:
                                    revert with 0, 17
                                if not stor21:
                                    revert with 0, 18
                                if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'contrib'
                                if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                    revert with 0, 17
                                if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 17
                                if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                    revert with 0, 'DripRewarder: overflow'
                                if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'DripRewarder: overflow'
                                mem[0] = address(stor30[uint32(idx)])
                                mem[32] = 28
                                stor28[address(stor30[uint32(idx)])] += block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                            if not uint32(idx) - test266151307():
                                revert with 0, 17
                            idx = uint32(idx) + 1
                            s = s + balanceOf[address(stor30[uint32(idx)])]
                            continue 
                    else:
                        if stor25 <= stor27:
                            if not stor24 + 1:
                                stor24 = stor23
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                revert with 0, 17
                            stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                            idx = 0
                            s = 0
                            while uint32(idx) < stor30.length:
                                if s > !balanceOf[address(stor30[uint32(idx)])]:
                                    revert with 0, 17
                                if not -stor21:
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] = 0
                                else:
                                    if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                        revert with 0, 17
                                    if not stor21:
                                        revert with 0, 18
                                    if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'contrib'
                                    if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                        revert with 0, 17
                                    if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 17
                                    if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                        revert with 0, 'DripRewarder: overflow'
                                    if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'DripRewarder: overflow'
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                if not uint32(idx) - test266151307():
                                    revert with 0, 17
                                idx = uint32(idx) + 1
                                s = s + balanceOf[address(stor30[uint32(idx)])]
                                continue 
                        else:
                            if stor25 < stor27:
                                revert with 0, 17
                            if not stor24 + 1:
                                stor24 = stor23
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                revert with 0, 17
                            stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                            idx = 0
                            s = 0
                            while uint32(idx) < stor30.length:
                                if s > !balanceOf[address(stor30[uint32(idx)])]:
                                    revert with 0, 17
                                if not -stor21:
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] = 0
                                else:
                                    if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                        revert with 0, 17
                                    if not stor21:
                                        revert with 0, 18
                                    if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'contrib'
                                    if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                        revert with 0, 17
                                    if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 17
                                    if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                        revert with 0, 'DripRewarder: overflow'
                                    if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'DripRewarder: overflow'
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                if not uint32(idx) - test266151307():
                                    revert with 0, 17
                                idx = uint32(idx) + 1
                                s = s + balanceOf[address(stor30[uint32(idx)])]
                                continue 
        else:
            if block.timestamp < stor24:
                revert with 0, 'DripRewarder: clocks going backward or too soon'
            if stor24 != -1:
                if block.timestamp < stor23:
                    if not uint32(stor26.field_0):
                        revert with 0, 18
                    if 0 / uint32(stor26.field_0) and dripRate > -1 / 0 / uint32(stor26.field_0):
                        revert with 0, 17
                    if stor27 > !(0 / uint32(stor26.field_0) * dripRate):
                        revert with 0, 17
                    if stor25 >= stor27 + (0 / uint32(stor26.field_0) * dripRate):
                        if not stor24 + 1:
                            stor24 = stor23
                        if not uint32(stor26.field_0):
                            revert with 0, 18
                        if 0 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / 0 / uint32(stor26.field_0):
                            revert with 0, 17
                        if stor24 > !(0 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                            revert with 0, 17
                        stor24 += 0 / uint32(stor26.field_0) * uint32(stor26.field_0)
                        idx = 0
                        s = 0
                        while uint32(idx) < stor30.length:
                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                revert with 0, 17
                            if not -stor21:
                                mem[0] = address(stor30[uint32(idx)])
                                mem[32] = 28
                                stor28[address(stor30[uint32(idx)])] = 0
                            else:
                                if 0 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / 0 / uint32(stor26.field_0) * dripRate:
                                    revert with 0, 17
                                if not stor21:
                                    revert with 0, 18
                                if 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'contrib'
                                if 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                    revert with 0, 17
                                if stor28[address(stor30[uint32(idx)])] < 0 and 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 17
                                if -1 < stor28[address(stor30[uint32(idx)])] + (0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                    revert with 0, 'DripRewarder: overflow'
                                if stor28[address(stor30[uint32(idx)])] + (0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'DripRewarder: overflow'
                                mem[0] = address(stor30[uint32(idx)])
                                mem[32] = 28
                                stor28[address(stor30[uint32(idx)])] += 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                            if not uint32(idx) - test266151307():
                                revert with 0, 17
                            idx = uint32(idx) + 1
                            s = s + balanceOf[address(stor30[uint32(idx)])]
                            continue 
                    else:
                        if stor25 <= stor27:
                            if not stor24 + 1:
                                stor24 = stor23
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if 0 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / 0 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor24 > !(0 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                revert with 0, 17
                            stor24 += 0 / uint32(stor26.field_0) * uint32(stor26.field_0)
                            idx = 0
                            s = 0
                            while uint32(idx) < stor30.length:
                                if s > !balanceOf[address(stor30[uint32(idx)])]:
                                    revert with 0, 17
                                if not -stor21:
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] = 0
                                else:
                                    if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                        revert with 0, 17
                                    if not stor21:
                                        revert with 0, 18
                                    if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'contrib'
                                    if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                        revert with 0, 17
                                    if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 17
                                    if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                        revert with 0, 'DripRewarder: overflow'
                                    if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'DripRewarder: overflow'
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                if not uint32(idx) - test266151307():
                                    revert with 0, 17
                                idx = uint32(idx) + 1
                                s = s + balanceOf[address(stor30[uint32(idx)])]
                                continue 
                        else:
                            if stor25 < stor27:
                                revert with 0, 17
                            if not stor24 + 1:
                                stor24 = stor23
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if 0 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / 0 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor24 > !(0 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                revert with 0, 17
                            stor24 += 0 / uint32(stor26.field_0) * uint32(stor26.field_0)
                            idx = 0
                            s = 0
                            while uint32(idx) < stor30.length:
                                if s > !balanceOf[address(stor30[uint32(idx)])]:
                                    revert with 0, 17
                                if not -stor21:
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] = 0
                                else:
                                    if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                        revert with 0, 17
                                    if not stor21:
                                        revert with 0, 18
                                    if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'contrib'
                                    if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                        revert with 0, 17
                                    if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 17
                                    if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                        revert with 0, 'DripRewarder: overflow'
                                    if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'DripRewarder: overflow'
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                if not uint32(idx) - test266151307():
                                    revert with 0, 17
                                idx = uint32(idx) + 1
                                s = s + balanceOf[address(stor30[uint32(idx)])]
                                continue 
                else:
                    if stor24 == -1:
                        if block.timestamp < stor23:
                            revert with 0, 17
                        if not uint32(stor26.field_0):
                            revert with 0, 18
                        if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                            revert with 0, 17
                        if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                            revert with 0, 17
                        if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                            if not stor24 + 1:
                                stor24 = stor23
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                revert with 0, 17
                            stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                            idx = 0
                            s = 0
                            while uint32(idx) < stor30.length:
                                if s > !balanceOf[address(stor30[uint32(idx)])]:
                                    revert with 0, 17
                                if not -stor21:
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] = 0
                                else:
                                    if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor23 / uint32(stor26.field_0) * dripRate:
                                        revert with 0, 17
                                    if not stor21:
                                        revert with 0, 18
                                    if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'contrib'
                                    if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                        revert with 0, 17
                                    if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 17
                                    if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                        revert with 0, 'DripRewarder: overflow'
                                    if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'DripRewarder: overflow'
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] += block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                if not uint32(idx) - test266151307():
                                    revert with 0, 17
                                idx = uint32(idx) + 1
                                s = s + balanceOf[address(stor30[uint32(idx)])]
                                continue 
                        else:
                            if stor25 <= stor27:
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
                            else:
                                if stor25 < stor27:
                                    revert with 0, 17
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
                    else:
                        if block.timestamp < stor24:
                            revert with 0, 17
                        if not uint32(stor26.field_0):
                            revert with 0, 18
                        if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                            revert with 0, 17
                        if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                            revert with 0, 17
                        if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                            if not stor24 + 1:
                                stor24 = stor23
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                revert with 0, 17
                            stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                            idx = 0
                            s = 0
                            while uint32(idx) < stor30.length:
                                if s > !balanceOf[address(stor30[uint32(idx)])]:
                                    revert with 0, 17
                                if not -stor21:
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] = 0
                                else:
                                    if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor24 / uint32(stor26.field_0) * dripRate:
                                        revert with 0, 17
                                    if not stor21:
                                        revert with 0, 18
                                    if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'contrib'
                                    if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                        revert with 0, 17
                                    if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 17
                                    if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                        revert with 0, 'DripRewarder: overflow'
                                    if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'DripRewarder: overflow'
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] += block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                if not uint32(idx) - test266151307():
                                    revert with 0, 17
                                idx = uint32(idx) + 1
                                s = s + balanceOf[address(stor30[uint32(idx)])]
                                continue 
                        else:
                            if stor25 <= stor27:
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
                            else:
                                if stor25 < stor27:
                                    revert with 0, 17
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
            else:
                if block.timestamp < stor23:
                    idx = 0
                    s = 0
                    while uint32(idx) < stor30.length:
                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                            revert with 0, 17
                        if not -stor21:
                            mem[0] = address(stor30[uint32(idx)])
                            mem[32] = 28
                            stor28[address(stor30[uint32(idx)])] = 0
                        else:
                            if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                revert with 0, 17
                            if not stor21:
                                revert with 0, 18
                            if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'contrib'
                            if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                revert with 0, 17
                            if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 17
                            if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                revert with 0, 'DripRewarder: overflow'
                            if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'DripRewarder: overflow'
                            mem[0] = address(stor30[uint32(idx)])
                            mem[32] = 28
                            stor28[address(stor30[uint32(idx)])] += 0 / stor21
                        if not uint32(idx) - test266151307():
                            revert with 0, 17
                        idx = uint32(idx) + 1
                        s = s + balanceOf[address(stor30[uint32(idx)])]
                        continue 
                else:
                    if stor24 == -1:
                        if block.timestamp < stor23:
                            revert with 0, 17
                        if not uint32(stor26.field_0):
                            revert with 0, 18
                        if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                            revert with 0, 17
                        if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                            revert with 0, 17
                        if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                            if not stor24 + 1:
                                stor24 = stor23
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                revert with 0, 17
                            stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                            idx = 0
                            s = 0
                            while uint32(idx) < stor30.length:
                                if s > !balanceOf[address(stor30[uint32(idx)])]:
                                    revert with 0, 17
                                if not -stor21:
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] = 0
                                else:
                                    if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor23 / uint32(stor26.field_0) * dripRate:
                                        revert with 0, 17
                                    if not stor21:
                                        revert with 0, 18
                                    if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'contrib'
                                    if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                        revert with 0, 17
                                    if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 17
                                    if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                        revert with 0, 'DripRewarder: overflow'
                                    if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'DripRewarder: overflow'
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] += block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                if not uint32(idx) - test266151307():
                                    revert with 0, 17
                                idx = uint32(idx) + 1
                                s = s + balanceOf[address(stor30[uint32(idx)])]
                                continue 
                        else:
                            if stor25 <= stor27:
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
                            else:
                                if stor25 < stor27:
                                    revert with 0, 17
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
                    else:
                        if block.timestamp < stor24:
                            revert with 0, 17
                        if not uint32(stor26.field_0):
                            revert with 0, 18
                        if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                            revert with 0, 17
                        if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                            revert with 0, 17
                        if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                            if not stor24 + 1:
                                stor24 = stor23
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                revert with 0, 17
                            stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                            idx = 0
                            s = 0
                            while uint32(idx) < stor30.length:
                                if s > !balanceOf[address(stor30[uint32(idx)])]:
                                    revert with 0, 17
                                if not -stor21:
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] = 0
                                else:
                                    if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor24 / uint32(stor26.field_0) * dripRate:
                                        revert with 0, 17
                                    if not stor21:
                                        revert with 0, 18
                                    if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'contrib'
                                    if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                        revert with 0, 17
                                    if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 17
                                    if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                        revert with 0, 'DripRewarder: overflow'
                                    if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'DripRewarder: overflow'
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] += block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                if not uint32(idx) - test266151307():
                                    revert with 0, 17
                                idx = uint32(idx) + 1
                                s = s + balanceOf[address(stor30[uint32(idx)])]
                                continue 
                        else:
                            if stor25 <= stor27:
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
                            else:
                                if stor25 < stor27:
                                    revert with 0, 17
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
        if s != stor21:
            revert with 0, 'sum'
    if block.timestamp < stor23:
        if not uint32(stor26.field_0):
            revert with 0, 18
        if 0 / uint32(stor26.field_0) and dripRate > -1 / 0 / uint32(stor26.field_0):
            revert with 0, 17
        if stor27 > !(0 / uint32(stor26.field_0) * dripRate):
            revert with 0, 17
        if stor25 >= stor27 + (0 / uint32(stor26.field_0) * dripRate):
            if stor27 > !(0 / uint32(stor26.field_0) * dripRate):
                revert with 0, 17
            stor27 += 0 / uint32(stor26.field_0) * dripRate
        else:
            if stor25 <= stor27:
                if stor27 > -1:
                    revert with 0, 17
            else:
                if stor25 < stor27:
                    revert with 0, 17
                if stor27 > !(stor25 - stor27):
                    revert with 0, 17
                stor27 = stor25
    else:
        if stor24 == -1:
            if block.timestamp < stor23:
                revert with 0, 17
            if not uint32(stor26.field_0):
                revert with 0, 18
            if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                revert with 0, 17
            if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                revert with 0, 17
            if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                    revert with 0, 17
                stor27 += block.timestamp - stor23 / uint32(stor26.field_0) * dripRate
            else:
                if stor25 <= stor27:
                    if stor27 > -1:
                        revert with 0, 17
                else:
                    if stor25 < stor27:
                        revert with 0, 17
                    if stor27 > !(stor25 - stor27):
                        revert with 0, 17
                    stor27 = stor25
        else:
            if block.timestamp < stor24:
                revert with 0, 17
            if not uint32(stor26.field_0):
                revert with 0, 18
            if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                revert with 0, 17
            if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                revert with 0, 17
            if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                    revert with 0, 17
                stor27 += block.timestamp - stor24 / uint32(stor26.field_0) * dripRate
            else:
                if stor25 <= stor27:
                    if stor27 > -1:
                        revert with 0, 17
                else:
                    if stor25 < stor27:
                        revert with 0, 17
                    if stor27 > !(stor25 - stor27):
                        revert with 0, 17
                    stor27 = stor25
    stor21 = totalSupply + arg2
    require mintingEnabled
    require arg1
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    if arg2 < 74 * arg2 / 100:
        revert with 0, 17
    call stableTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor17, arg2 - (74 * arg2 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalSupply >= -1:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        stor11 = 0
        emit MintFinished()
    if not -stor31[address(arg1)]:
        stor30.length++
        stor50BB[stor30.length] = arg1
        if test266151307() < stor30.length:
            revert with 0, 'too many holders'
        stor31[address(arg1)] = uint32(stor30.length)
    return 1
}

function sub_8e8f0291(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall stableTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -arg1:
        require arg1 <= ext_call.return_data[0]
        if -arg1:
            mem[ceil32(return_data.size) + 128] = stableTokenAddress
            mem[ceil32(return_data.size) + 160] = sub_87cd5989Address
            require ext_code.size(stor17)
            call stor17.0x2b4530ec with:
                 gas gas_remaining wei
                args stableTokenAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 196] = stor17
            mem[ceil32(return_data.size) + 228] = this.address
            mem[ceil32(return_data.size) + 260] = arg1
            call stableTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args stor17, address(this.address), arg1
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 196] = this.address
            staticcall sub_87cd5989Address.0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 32]
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 196] = dexRouterAddress
            mem[(4 * ceil32(return_data.size)) + 228] = arg1
            call stableTokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 64]
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = arg1
            idx = 0
            s = (6 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(dexRouterAddress)
            call dexRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall sub_87cd5989Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            call sub_87cd5989Address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor19, (0 / 26) + (0 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_9423c3c0 > !((0 / 26) + (0 / 100)):
                revert with 0, 17
            sub_9423c3c0 = sub_9423c3c0 + (0 / 26) + (0 / 100)
            stor25 = sub_9423c3c0
            staticcall sub_87cd5989Address.0x70a08231 with:
                    gas gas_remaining wei
                   args stor19
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if test266151307() < stor30.length:
                revert with 0, 'DripRewarder: too many accounts'
            if not stor21:
                if stor30.length:
                    revert with 0, 'addrlist'
                if not stor23 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    stor23 = block.timestamp
                    stor24 = block.timestamp
            else:
                if stor24 == -1:
                    if block.timestamp < stor23:
                        idx = 0
                        s = 0
                        while uint32(idx) < stor30.length:
                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                revert with 0, 17
                            if not -stor21:
                                mem[0] = address(stor30[uint32(idx)])
                                mem[32] = 28
                                stor28[address(stor30[uint32(idx)])] = 0
                            else:
                                if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                    revert with 0, 17
                                if not stor21:
                                    revert with 0, 18
                                if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'contrib'
                                if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                    revert with 0, 17
                                if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 17
                                if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                    revert with 0, 'DripRewarder: overflow'
                                if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'DripRewarder: overflow'
                                mem[0] = address(stor30[uint32(idx)])
                                mem[32] = 28
                                stor28[address(stor30[uint32(idx)])] += 0 / stor21
                            if not uint32(idx) - test266151307():
                                revert with 0, 17
                            idx = uint32(idx) + 1
                            s = s + balanceOf[address(stor30[uint32(idx)])]
                            continue 
                    else:
                        if stor24 == -1:
                            if block.timestamp < stor23:
                                revert with 0, 17
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                                revert with 0, 17
                            if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor23 / uint32(stor26.field_0) * dripRate:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
                            else:
                                if stor25 <= stor27:
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 < stor27:
                                        revert with 0, 17
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                        else:
                            if block.timestamp < stor24:
                                revert with 0, 17
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                                revert with 0, 17
                            if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor24 / uint32(stor26.field_0) * dripRate:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
                            else:
                                if stor25 <= stor27:
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 < stor27:
                                        revert with 0, 17
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                else:
                    if block.timestamp < stor24:
                        revert with 0, 'DripRewarder: clocks going backward or too soon'
                    if stor24 != -1:
                        if block.timestamp < stor23:
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if 0 / uint32(stor26.field_0) and dripRate > -1 / 0 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor27 > !(0 / uint32(stor26.field_0) * dripRate):
                                revert with 0, 17
                            if stor25 >= stor27 + (0 / uint32(stor26.field_0) * dripRate):
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if 0 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / 0 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(0 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += 0 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if 0 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / 0 / uint32(stor26.field_0) * dripRate:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + (0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + (0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
                            else:
                                if stor25 <= stor27:
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if 0 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / 0 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(0 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += 0 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 < stor27:
                                        revert with 0, 17
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if 0 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / 0 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(0 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += 0 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                        else:
                            if stor24 == -1:
                                if block.timestamp < stor23:
                                    revert with 0, 17
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                                    revert with 0, 17
                                if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor23 / uint32(stor26.field_0) * dripRate:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 <= stor27:
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                                    else:
                                        if stor25 < stor27:
                                            revert with 0, 17
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                            else:
                                if block.timestamp < stor24:
                                    revert with 0, 17
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                                    revert with 0, 17
                                if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor24 / uint32(stor26.field_0) * dripRate:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 <= stor27:
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                                    else:
                                        if stor25 < stor27:
                                            revert with 0, 17
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                    else:
                        if block.timestamp < stor23:
                            idx = 0
                            s = 0
                            while uint32(idx) < stor30.length:
                                if s > !balanceOf[address(stor30[uint32(idx)])]:
                                    revert with 0, 17
                                if not -stor21:
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] = 0
                                else:
                                    if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                        revert with 0, 17
                                    if not stor21:
                                        revert with 0, 18
                                    if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'contrib'
                                    if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                        revert with 0, 17
                                    if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 17
                                    if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                        revert with 0, 'DripRewarder: overflow'
                                    if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'DripRewarder: overflow'
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                if not uint32(idx) - test266151307():
                                    revert with 0, 17
                                idx = uint32(idx) + 1
                                s = s + balanceOf[address(stor30[uint32(idx)])]
                                continue 
                        else:
                            if stor24 == -1:
                                if block.timestamp < stor23:
                                    revert with 0, 17
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                                    revert with 0, 17
                                if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor23 / uint32(stor26.field_0) * dripRate:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 <= stor27:
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                                    else:
                                        if stor25 < stor27:
                                            revert with 0, 17
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                            else:
                                if block.timestamp < stor24:
                                    revert with 0, 17
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                                    revert with 0, 17
                                if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor24 / uint32(stor26.field_0) * dripRate:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 <= stor27:
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                                    else:
                                        if stor25 < stor27:
                                            revert with 0, 17
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                if s != stor21:
                    revert with 0, 'sum'
            if block.timestamp < stor23:
                if not uint32(stor26.field_0):
                    revert with 0, 18
                if 0 / uint32(stor26.field_0) and dripRate > -1 / 0 / uint32(stor26.field_0):
                    revert with 0, 17
                if stor27 > !(0 / uint32(stor26.field_0) * dripRate):
                    revert with 0, 17
                if stor25 >= stor27 + (0 / uint32(stor26.field_0) * dripRate):
                    if stor27 > !(0 / uint32(stor26.field_0) * dripRate):
                        revert with 0, 17
                    stor27 += 0 / uint32(stor26.field_0) * dripRate
                else:
                    if stor25 <= stor27:
                        if stor27 > -1:
                            revert with 0, 17
                    else:
                        if stor25 < stor27:
                            revert with 0, 17
                        if stor27 > !(stor25 - stor27):
                            revert with 0, 17
                        stor27 = stor25
            else:
                if stor24 == -1:
                    if block.timestamp < stor23:
                        revert with 0, 17
                    if not uint32(stor26.field_0):
                        revert with 0, 18
                    if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                        revert with 0, 17
                    if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                        revert with 0, 17
                    if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                        if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                            revert with 0, 17
                        stor27 += block.timestamp - stor23 / uint32(stor26.field_0) * dripRate
                    else:
                        if stor25 <= stor27:
                            if stor27 > -1:
                                revert with 0, 17
                        else:
                            if stor25 < stor27:
                                revert with 0, 17
                            if stor27 > !(stor25 - stor27):
                                revert with 0, 17
                            stor27 = stor25
                else:
                    if block.timestamp < stor24:
                        revert with 0, 17
                    if not uint32(stor26.field_0):
                        revert with 0, 18
                    if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                        revert with 0, 17
                    if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                        revert with 0, 17
                    if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                        if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                            revert with 0, 17
                        stor27 += block.timestamp - stor24 / uint32(stor26.field_0) * dripRate
                    else:
                        if stor25 <= stor27:
                            if stor27 > -1:
                                revert with 0, 17
                        else:
                            if stor25 < stor27:
                                revert with 0, 17
                            if stor27 > !(stor25 - stor27):
                                revert with 0, 17
                            stor27 = stor25
            dripRate = ext_call.return_data[0] / 100
            call sub_87cd5989Address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor20, 0 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call sub_87cd5989Address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor18, -(0 / 26) - (2 * 0 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        require ext_call.return_data[0] <= ext_call.return_data[0]
        if -ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 128] = stableTokenAddress
            mem[ceil32(return_data.size) + 160] = sub_87cd5989Address
            require ext_code.size(stor17)
            call stor17.0x2b4530ec with:
                 gas gas_remaining wei
                args stableTokenAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 196] = stor17
            mem[ceil32(return_data.size) + 228] = this.address
            mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
            call stableTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args stor17, address(this.address), ext_call.return_data[0]
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 196] = this.address
            staticcall sub_87cd5989Address.0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 32]
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 196] = dexRouterAddress
            mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            call stableTokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 64]
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            idx = 0
            s = (6 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(dexRouterAddress)
            call dexRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall sub_87cd5989Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            call sub_87cd5989Address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor19, (0 / 26) + (0 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_9423c3c0 > !((0 / 26) + (0 / 100)):
                revert with 0, 17
            sub_9423c3c0 = sub_9423c3c0 + (0 / 26) + (0 / 100)
            stor25 = sub_9423c3c0
            staticcall sub_87cd5989Address.0x70a08231 with:
                    gas gas_remaining wei
                   args stor19
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if test266151307() < stor30.length:
                revert with 0, 'DripRewarder: too many accounts'
            if not stor21:
                if stor30.length:
                    revert with 0, 'addrlist'
                if not stor23 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    stor23 = block.timestamp
                    stor24 = block.timestamp
            else:
                if stor24 == -1:
                    if block.timestamp < stor23:
                        idx = 0
                        s = 0
                        while uint32(idx) < stor30.length:
                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                revert with 0, 17
                            if not -stor21:
                                mem[0] = address(stor30[uint32(idx)])
                                mem[32] = 28
                                stor28[address(stor30[uint32(idx)])] = 0
                            else:
                                if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                    revert with 0, 17
                                if not stor21:
                                    revert with 0, 18
                                if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'contrib'
                                if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                    revert with 0, 17
                                if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 17
                                if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                    revert with 0, 'DripRewarder: overflow'
                                if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'DripRewarder: overflow'
                                mem[0] = address(stor30[uint32(idx)])
                                mem[32] = 28
                                stor28[address(stor30[uint32(idx)])] += 0 / stor21
                            if not uint32(idx) - test266151307():
                                revert with 0, 17
                            idx = uint32(idx) + 1
                            s = s + balanceOf[address(stor30[uint32(idx)])]
                            continue 
                    else:
                        if stor24 == -1:
                            if block.timestamp < stor23:
                                revert with 0, 17
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                                revert with 0, 17
                            if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor23 / uint32(stor26.field_0) * dripRate:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
                            else:
                                if stor25 <= stor27:
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 < stor27:
                                        revert with 0, 17
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                        else:
                            if block.timestamp < stor24:
                                revert with 0, 17
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                                revert with 0, 17
                            if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor24 / uint32(stor26.field_0) * dripRate:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
                            else:
                                if stor25 <= stor27:
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 < stor27:
                                        revert with 0, 17
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                else:
                    if block.timestamp < stor24:
                        revert with 0, 'DripRewarder: clocks going backward or too soon'
                    if stor24 != -1:
                        if block.timestamp < stor23:
                            if not uint32(stor26.field_0):
                                revert with 0, 18
                            if 0 / uint32(stor26.field_0) and dripRate > -1 / 0 / uint32(stor26.field_0):
                                revert with 0, 17
                            if stor27 > !(0 / uint32(stor26.field_0) * dripRate):
                                revert with 0, 17
                            if stor25 >= stor27 + (0 / uint32(stor26.field_0) * dripRate):
                                if not stor24 + 1:
                                    stor24 = stor23
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if 0 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / 0 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor24 > !(0 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                    revert with 0, 17
                                stor24 += 0 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                idx = 0
                                s = 0
                                while uint32(idx) < stor30.length:
                                    if s > !balanceOf[address(stor30[uint32(idx)])]:
                                        revert with 0, 17
                                    if not -stor21:
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] = 0
                                    else:
                                        if 0 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / 0 / uint32(stor26.field_0) * dripRate:
                                            revert with 0, 17
                                        if not stor21:
                                            revert with 0, 18
                                        if 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'contrib'
                                        if 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                            revert with 0, 17
                                        if stor28[address(stor30[uint32(idx)])] < 0 and 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 17
                                        if -1 < stor28[address(stor30[uint32(idx)])] + (0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                            revert with 0, 'DripRewarder: overflow'
                                        if stor28[address(stor30[uint32(idx)])] + (0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'DripRewarder: overflow'
                                        mem[0] = address(stor30[uint32(idx)])
                                        mem[32] = 28
                                        stor28[address(stor30[uint32(idx)])] += 0 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                    if not uint32(idx) - test266151307():
                                        revert with 0, 17
                                    idx = uint32(idx) + 1
                                    s = s + balanceOf[address(stor30[uint32(idx)])]
                                    continue 
                            else:
                                if stor25 <= stor27:
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if 0 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / 0 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(0 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += 0 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 < stor27:
                                        revert with 0, 17
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if 0 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / 0 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(0 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += 0 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                        else:
                            if stor24 == -1:
                                if block.timestamp < stor23:
                                    revert with 0, 17
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                                    revert with 0, 17
                                if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor23 / uint32(stor26.field_0) * dripRate:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 <= stor27:
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                                    else:
                                        if stor25 < stor27:
                                            revert with 0, 17
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                            else:
                                if block.timestamp < stor24:
                                    revert with 0, 17
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                                    revert with 0, 17
                                if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor24 / uint32(stor26.field_0) * dripRate:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 <= stor27:
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                                    else:
                                        if stor25 < stor27:
                                            revert with 0, 17
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                    else:
                        if block.timestamp < stor23:
                            idx = 0
                            s = 0
                            while uint32(idx) < stor30.length:
                                if s > !balanceOf[address(stor30[uint32(idx)])]:
                                    revert with 0, 17
                                if not -stor21:
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] = 0
                                else:
                                    if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                        revert with 0, 17
                                    if not stor21:
                                        revert with 0, 18
                                    if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'contrib'
                                    if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                        revert with 0, 17
                                    if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 17
                                    if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                        revert with 0, 'DripRewarder: overflow'
                                    if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'DripRewarder: overflow'
                                    mem[0] = address(stor30[uint32(idx)])
                                    mem[32] = 28
                                    stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                if not uint32(idx) - test266151307():
                                    revert with 0, 17
                                idx = uint32(idx) + 1
                                s = s + balanceOf[address(stor30[uint32(idx)])]
                                continue 
                        else:
                            if stor24 == -1:
                                if block.timestamp < stor23:
                                    revert with 0, 17
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                                    revert with 0, 17
                                if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor23 / uint32(stor26.field_0) * dripRate:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += block.timestamp - stor23 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 <= stor27:
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                                    else:
                                        if stor25 < stor27:
                                            revert with 0, 17
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor23 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor23 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                            else:
                                if block.timestamp < stor24:
                                    revert with 0, 17
                                if not uint32(stor26.field_0):
                                    revert with 0, 18
                                if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                    revert with 0, 17
                                if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                                    revert with 0, 17
                                if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                                    if not stor24 + 1:
                                        stor24 = stor23
                                    if not uint32(stor26.field_0):
                                        revert with 0, 18
                                    if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                        revert with 0, 17
                                    if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                        revert with 0, 17
                                    stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                    idx = 0
                                    s = 0
                                    while uint32(idx) < stor30.length:
                                        if s > !balanceOf[address(stor30[uint32(idx)])]:
                                            revert with 0, 17
                                        if not -stor21:
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] = 0
                                        else:
                                            if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate and balanceOf[address(stor30[uint32(idx)])] > -1 / block.timestamp - stor24 / uint32(stor26.field_0) * dripRate:
                                                revert with 0, 17
                                            if not stor21:
                                                revert with 0, 18
                                            if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'contrib'
                                            if block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                revert with 0, 17
                                            if stor28[address(stor30[uint32(idx)])] < 0 and block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 17
                                            if -1 < stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21):
                                                revert with 0, 'DripRewarder: overflow'
                                            if stor28[address(stor30[uint32(idx)])] + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'DripRewarder: overflow'
                                            mem[0] = address(stor30[uint32(idx)])
                                            mem[32] = 28
                                            stor28[address(stor30[uint32(idx)])] += block.timestamp - stor24 / uint32(stor26.field_0) * dripRate * balanceOf[address(stor30[uint32(idx)])] / stor21
                                        if not uint32(idx) - test266151307():
                                            revert with 0, 17
                                        idx = uint32(idx) + 1
                                        s = s + balanceOf[address(stor30[uint32(idx)])]
                                        continue 
                                else:
                                    if stor25 <= stor27:
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if False and balanceOf[address(stor30[uint32(idx)])] > 0:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if 0 / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if 0 / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and 0 / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + (0 / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + (0 / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += 0 / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                                    else:
                                        if stor25 < stor27:
                                            revert with 0, 17
                                        if not stor24 + 1:
                                            stor24 = stor23
                                        if not uint32(stor26.field_0):
                                            revert with 0, 18
                                        if block.timestamp - stor24 / uint32(stor26.field_0) and uint32(stor26.field_0) > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                                            revert with 0, 17
                                        if stor24 > !(block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)):
                                            revert with 0, 17
                                        stor24 += block.timestamp - stor24 / uint32(stor26.field_0) * uint32(stor26.field_0)
                                        idx = 0
                                        s = 0
                                        while uint32(idx) < stor30.length:
                                            if s > !balanceOf[address(stor30[uint32(idx)])]:
                                                revert with 0, 17
                                            if not -stor21:
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] = 0
                                            else:
                                                if stor25 - stor27 and balanceOf[address(stor30[uint32(idx)])] > -1 / stor25 - stor27:
                                                    revert with 0, 17
                                                if not stor21:
                                                    revert with 0, 18
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'contrib'
                                                if (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 > -stor28[address(stor30[uint32(idx)])] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor28[address(stor30[uint32(idx)])] >= 0:
                                                    revert with 0, 17
                                                if stor28[address(stor30[uint32(idx)])] < 0 and (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21 < -stor28[address(stor30[uint32(idx)])] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 17
                                                if -1 < stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21):
                                                    revert with 0, 'DripRewarder: overflow'
                                                if stor28[address(stor30[uint32(idx)])] + ((stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'DripRewarder: overflow'
                                                mem[0] = address(stor30[uint32(idx)])
                                                mem[32] = 28
                                                stor28[address(stor30[uint32(idx)])] += (stor25 * balanceOf[address(stor30[uint32(idx)])]) - (stor27 * balanceOf[address(stor30[uint32(idx)])]) / stor21
                                            if not uint32(idx) - test266151307():
                                                revert with 0, 17
                                            idx = uint32(idx) + 1
                                            s = s + balanceOf[address(stor30[uint32(idx)])]
                                            continue 
                if s != stor21:
                    revert with 0, 'sum'
            if block.timestamp < stor23:
                if not uint32(stor26.field_0):
                    revert with 0, 18
                if 0 / uint32(stor26.field_0) and dripRate > -1 / 0 / uint32(stor26.field_0):
                    revert with 0, 17
                if stor27 > !(0 / uint32(stor26.field_0) * dripRate):
                    revert with 0, 17
                if stor25 >= stor27 + (0 / uint32(stor26.field_0) * dripRate):
                    if stor27 > !(0 / uint32(stor26.field_0) * dripRate):
                        revert with 0, 17
                    stor27 += 0 / uint32(stor26.field_0) * dripRate
                else:
                    if stor25 <= stor27:
                        if stor27 > -1:
                            revert with 0, 17
                    else:
                        if stor25 < stor27:
                            revert with 0, 17
                        if stor27 > !(stor25 - stor27):
                            revert with 0, 17
                        stor27 = stor25
            else:
                if stor24 == -1:
                    if block.timestamp < stor23:
                        revert with 0, 17
                    if not uint32(stor26.field_0):
                        revert with 0, 18
                    if block.timestamp - stor23 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor23 / uint32(stor26.field_0):
                        revert with 0, 17
                    if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                        revert with 0, 17
                    if stor25 >= stor27 + (block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                        if stor27 > !(block.timestamp - stor23 / uint32(stor26.field_0) * dripRate):
                            revert with 0, 17
                        stor27 += block.timestamp - stor23 / uint32(stor26.field_0) * dripRate
                    else:
                        if stor25 <= stor27:
                            if stor27 > -1:
                                revert with 0, 17
                        else:
                            if stor25 < stor27:
                                revert with 0, 17
                            if stor27 > !(stor25 - stor27):
                                revert with 0, 17
                            stor27 = stor25
                else:
                    if block.timestamp < stor24:
                        revert with 0, 17
                    if not uint32(stor26.field_0):
                        revert with 0, 18
                    if block.timestamp - stor24 / uint32(stor26.field_0) and dripRate > -1 / block.timestamp - stor24 / uint32(stor26.field_0):
                        revert with 0, 17
                    if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                        revert with 0, 17
                    if stor25 >= stor27 + (block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                        if stor27 > !(block.timestamp - stor24 / uint32(stor26.field_0) * dripRate):
                            revert with 0, 17
                        stor27 += block.timestamp - stor24 / uint32(stor26.field_0) * dripRate
                    else:
                        if stor25 <= stor27:
                            if stor27 > -1:
                                revert with 0, 17
                        else:
                            if stor25 < stor27:
                                revert with 0, 17
                            if stor27 > !(stor25 - stor27):
                                revert with 0, 17
                            stor27 = stor25
            dripRate = ext_call.return_data[0] / 100
            call sub_87cd5989Address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor20, 0 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call sub_87cd5989Address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor18, -(0 / 26) - (2 * 0 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
