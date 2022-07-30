contract main {




// =====================  Runtime code  =====================


#
#  - mint(address arg1, uint256 arg2, address arg3)
#
const decimals = 9

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9


mapping of uint256 nonces;
uint256 DOMAIN_SEPARATOR;
mapping of uint8 stor2;
uint256 stor3;
uint256 snipersCaught;
uint8 stor5; offset 8
uint8 stor5; offset 16
uint8 stor5; offset 24
uint256 stor5; offset 8
array of struct stor6;
array of struct stor7;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 mintingEnabled; offset 160
uint128 stor11; offset 160
address owner;
uint256 targetSupply;
address sub_87cd5989Address;
address stor16;
address stor17;
uint256 stor18;
uint256 stor19;
uint256 sub_6c396270;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint8 stor24;
uint32 stor24; offset 8
uint32 stor24;
uint256 stor25;
mapping of uint256 stor26;

function isSniper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function totalSupply() payable {
    return totalSupply
}

function targetSupply() payable {
    return targetSupply
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function sub_6c396270(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_6c396270
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

function mintingEnabled() payable {
    return bool(mintingEnabled)
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
    if targetSupply < totalSupply:
        revert with 0, 17
    return (targetSupply - totalSupply)
}

function sub_4600712b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not sniper admin'
    stor3 = arg1
}

function sub_b6ef4e55(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    Mask(248, 0, stor5.field_8) = Mask(248, 0, bool(arg1))
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
    Mask(248, 0, stor5.field_8) = Mask(248, 0, bool(arg1))
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
    if not stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is not a recorded sniper.'
    stor2[address(arg1)] = 0
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor5.field_8):
        if arg1 != owner:
            if owner != arg2:
                if owner != msg.sender:
                    if msg.sender != this.address:
                        if arg2:
                            if stor2[address(arg1)]:
                                revert with 0, 'Sniper rejected.'
                            if stor2[address(arg2)]:
                                revert with 0, 'Sniper rejected.'
                            if block.number < stor3:
                                stor2[address(arg2)] = 1
                                if not snipersCaught + 1:
                                    revert with 0, 17
                                snipersCaught++
                                emit SniperCaught(arg2);
                                return 0
    if arg1 != this.address:
        require owner == arg1
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(stor5.field_8):
        if owner != msg.sender:
            require this.address == msg.sender
    else:
        if msg.sender == owner:
            if owner != msg.sender:
                require this.address == msg.sender
        else:
            if owner == arg1:
                if owner != msg.sender:
                    require this.address == msg.sender
            else:
                if owner != msg.sender:
                    if msg.sender != this.address:
                        if arg1:
                            if stor2[address(msg.sender)]:
                                revert with 0, 'Sniper rejected.'
                            if stor2[address(arg1)]:
                                revert with 0, 'Sniper rejected.'
                            if block.number < stor3:
                                stor2[address(arg1)] = 1
                                if not snipersCaught + 1:
                                    revert with 0, 17
                                snipersCaught++
                                emit SniperCaught(arg1);
                                return 0
                    if owner != msg.sender:
                        require this.address == msg.sender
    require arg1
    require arg2 <= balanceOf[msg.sender]
    if balanceOf[msg.sender] < arg2:
        revert with 0, 17
    balanceOf[msg.sender] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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

function initialize(string arg1, string arg2, address arg3, address arg4, address arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
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
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor5.field_24):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
        if not arg3:
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
        sub_87cd5989Address = arg3
        stor16 = arg4
        stor17 = arg5
        staticcall arg3.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            stor18 = 1552
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > 0x2003d9767dc74f9f0ad785ba0c46c9e2f6522e119a0dcdf8ec16230966:
                    revert with 0, 17
                stor18 = 134154688 * 10^ext_call.return_data[31 len 1] / 24 * 3600
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if s * t > 0x2003d9767dc74f9f0ad785ba0c46c9e2f6522e119a0dcdf8ec16230966:
                    revert with 0, 17
                stor18 = 134154688 * s * t / 24 * 3600
        if arg6 >= -1:
            if stor22:
                revert with 0, 1
            stor19 = 0
            stor21 = arg6
        else:
            call sub_87cd5989Address.0x39e5362c with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg6 > !ext_call.return_data[0]:
                revert with 0, 17
            if stor22:
                revert with 0, 1
            stor19 = 0
            stor21 = arg6 + ext_call.return_data[0]
        sub_6c396270 = stor18
        uint8(stor24.field_0) = 1
        stor24.field_8 % 16777216 = 0
        stor23 = -1
        stor22 = -1
        staticcall sub_87cd5989Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x9fc8734fe937eb8f1b3f86ea189d71439f7d8d59dbc29958b02ac122dae1:
            revert with 0, 17
        targetSupply = 105000 * ext_call.return_data[0] / 100000
        if block.number > -1:
            revert with 0, 17
        if owner != msg.sender:
            revert with 0, 'not sniper admin'
        stor3 = block.number
        Mask(248, 0, stor5.field_8) = 0
        stor11 = 1
    else:
        if uint8(stor5.field_16) >= 1:
            revert with 0, 'Initializable: contract is already initialized'
        uint8(stor5.field_16) = 1
        uint8(stor5.field_24) = 1
        if not arg3:
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
        sub_87cd5989Address = arg3
        stor16 = arg4
        stor17 = arg5
        staticcall arg3.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            stor18 = 1552
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > 0x2003d9767dc74f9f0ad785ba0c46c9e2f6522e119a0dcdf8ec16230966:
                    revert with 0, 17
                stor18 = 134154688 * 10^ext_call.return_data[31 len 1] / 24 * 3600
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if s * t > 0x2003d9767dc74f9f0ad785ba0c46c9e2f6522e119a0dcdf8ec16230966:
                    revert with 0, 17
                stor18 = 134154688 * s * t / 24 * 3600
        if arg6 >= -1:
            if stor22:
                revert with 0, 1
            stor19 = 0
            stor21 = arg6
        else:
            call sub_87cd5989Address.0x39e5362c with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg6 > !ext_call.return_data[0]:
                revert with 0, 17
            if stor22:
                revert with 0, 1
            stor19 = 0
            stor21 = arg6 + ext_call.return_data[0]
        sub_6c396270 = stor18
        uint8(stor24.field_0) = 1
        stor24.field_8 % 16777216 = 0
        stor23 = -1
        stor22 = -1
        staticcall sub_87cd5989Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x9fc8734fe937eb8f1b3f86ea189d71439f7d8d59dbc29958b02ac122dae1:
            revert with 0, 17
        targetSupply = 105000 * ext_call.return_data[0] / 100000
        if block.number > -1:
            revert with 0, 17
        if owner != msg.sender:
            revert with 0, 'not sniper admin'
        stor3 = block.number
        Mask(248, 0, stor5.field_8) = 0
        stor11 = 1
        uint8(stor5.field_24) = 0
        emit 0x7f26b83f: 1
}

function rewardBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_87cd5989Address.0x70a08231 with:
            gas gas_remaining wei
           args stor17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < stor21:
        if not uint32(stor24.field_0):
            revert with 0, 18
        if 0 / uint32(stor24.field_0) and sub_6c396270 > -1 / 0 / uint32(stor24.field_0):
            revert with 0, 17
        if stor25 > !(0 / uint32(stor24.field_0) * sub_6c396270):
            revert with 0, 17
        if stor23 >= stor25 + (0 / uint32(stor24.field_0) * sub_6c396270):
            if not -stor19:
                return 0
            if 0 / uint32(stor24.field_0) * sub_6c396270 and balanceOf[address(arg1)] > -1 / 0 / uint32(stor24.field_0) * sub_6c396270:
                revert with 0, 17
            if not stor19:
                revert with 0, 18
            if 0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 'contrib'
            if 0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19 > -stor26[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(arg1)] >= 0:
                revert with 0, 17
            if stor26[address(arg1)] < 0 and 0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19 < -stor26[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if ext_call.return_data[0] >= stor26[address(arg1)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19):
                return (stor26[address(arg1)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19))
        else:
            if stor23 <= stor25:
                if not -stor19:
                    return 0
                if False and balanceOf[address(arg1)] > 0:
                    revert with 0, 17
                if not stor19:
                    revert with 0, 18
                if 0 / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'contrib'
                if 0 / stor19 > -stor26[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(arg1)] >= 0:
                    revert with 0, 17
                if stor26[address(arg1)] < 0 and 0 / stor19 < -stor26[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if ext_call.return_data[0] >= stor26[address(arg1)] + (0 / stor19):
                    return (stor26[address(arg1)] + (0 / stor19))
            else:
                if stor23 < stor25:
                    revert with 0, 17
                if not -stor19:
                    return 0
                if stor23 - stor25 and balanceOf[address(arg1)] > -1 / stor23 - stor25:
                    revert with 0, 17
                if not stor19:
                    revert with 0, 18
                if (stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'contrib'
                if (stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19 > -stor26[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(arg1)] >= 0:
                    revert with 0, 17
                if stor26[address(arg1)] < 0 and (stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19 < -stor26[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if ext_call.return_data[0] >= stor26[address(arg1)] + ((stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19):
                    return (stor26[address(arg1)] + ((stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19))
    else:
        if stor22 == -1:
            if block.timestamp < stor21:
                revert with 0, 17
            if not uint32(stor24.field_0):
                revert with 0, 18
            if block.timestamp - stor21 / uint32(stor24.field_0) and sub_6c396270 > -1 / block.timestamp - stor21 / uint32(stor24.field_0):
                revert with 0, 17
            if stor25 > !(block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270):
                revert with 0, 17
            if stor23 >= stor25 + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270):
                if not -stor19:
                    return 0
                if block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 and balanceOf[address(arg1)] > -1 / block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270:
                    revert with 0, 17
                if not stor19:
                    revert with 0, 18
                if block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'contrib'
                if block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19 > -stor26[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(arg1)] >= 0:
                    revert with 0, 17
                if stor26[address(arg1)] < 0 and block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19 < -stor26[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if ext_call.return_data[0] >= stor26[address(arg1)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19):
                    return (stor26[address(arg1)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19))
            else:
                if stor23 <= stor25:
                    if not -stor19:
                        return 0
                    if False and balanceOf[address(arg1)] > 0:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if 0 / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if 0 / stor19 > -stor26[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(arg1)] >= 0:
                        revert with 0, 17
                    if stor26[address(arg1)] < 0 and 0 / stor19 < -stor26[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor26[address(arg1)] + (0 / stor19):
                        return (stor26[address(arg1)] + (0 / stor19))
                else:
                    if stor23 < stor25:
                        revert with 0, 17
                    if not -stor19:
                        return 0
                    if stor23 - stor25 and balanceOf[address(arg1)] > -1 / stor23 - stor25:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if (stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if (stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19 > -stor26[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(arg1)] >= 0:
                        revert with 0, 17
                    if stor26[address(arg1)] < 0 and (stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19 < -stor26[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor26[address(arg1)] + ((stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19):
                        return (stor26[address(arg1)] + ((stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19))
        else:
            if block.timestamp < stor22:
                revert with 0, 17
            if not uint32(stor24.field_0):
                revert with 0, 18
            if block.timestamp - stor22 / uint32(stor24.field_0) and sub_6c396270 > -1 / block.timestamp - stor22 / uint32(stor24.field_0):
                revert with 0, 17
            if stor25 > !(block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270):
                revert with 0, 17
            if stor23 >= stor25 + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270):
                if not -stor19:
                    return 0
                if block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 and balanceOf[address(arg1)] > -1 / block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270:
                    revert with 0, 17
                if not stor19:
                    revert with 0, 18
                if block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'contrib'
                if block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19 > -stor26[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(arg1)] >= 0:
                    revert with 0, 17
                if stor26[address(arg1)] < 0 and block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19 < -stor26[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if ext_call.return_data[0] >= stor26[address(arg1)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19):
                    return (stor26[address(arg1)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(arg1)] / stor19))
            else:
                if stor23 <= stor25:
                    if not -stor19:
                        return 0
                    if False and balanceOf[address(arg1)] > 0:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if 0 / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if 0 / stor19 > -stor26[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(arg1)] >= 0:
                        revert with 0, 17
                    if stor26[address(arg1)] < 0 and 0 / stor19 < -stor26[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor26[address(arg1)] + (0 / stor19):
                        return (stor26[address(arg1)] + (0 / stor19))
                else:
                    if stor23 < stor25:
                        revert with 0, 17
                    if not -stor19:
                        return 0
                    if stor23 - stor25 and balanceOf[address(arg1)] > -1 / stor23 - stor25:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if (stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if (stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19 > -stor26[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(arg1)] >= 0:
                        revert with 0, 17
                    if stor26[address(arg1)] < 0 and (stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19 < -stor26[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor26[address(arg1)] + ((stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19):
                        return (stor26[address(arg1)] + ((stor23 * balanceOf[address(arg1)]) - (stor25 * balanceOf[address(arg1)]) / stor19))
    return ext_call.return_data[0]
}

function claimReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_87cd5989Address.0x70a08231 with:
            gas gas_remaining wei
           args stor17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < stor21:
        revert with 0, 'DripRewarder: too soon'
    if not stor22 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        stor22 = stor21
    if arg1:
        if block.timestamp < stor21:
            if not uint32(stor24.field_0):
                revert with 0, 18
            if 0 / uint32(stor24.field_0) and sub_6c396270 > -1 / 0 / uint32(stor24.field_0):
                revert with 0, 17
            if stor25 > !(0 / uint32(stor24.field_0) * sub_6c396270):
                revert with 0, 17
            if stor23 >= stor25 + (0 / uint32(stor24.field_0) * sub_6c396270):
                if not -stor19:
                    revert with 0, 'DripRewarder: no claim'
                if 0 / uint32(stor24.field_0) * sub_6c396270 and balanceOf[address(msg.sender)] > -1 / 0 / uint32(stor24.field_0) * sub_6c396270:
                    revert with 0, 17
                if not stor19:
                    revert with 0, 18
                if 0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'contrib'
                if 0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                    revert with 0, 17
                if stor26[address(msg.sender)] < 0 and 0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if ext_call.return_data[0] >= stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19):
                    if stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) <= 0:
                        revert with 0, 'DripRewarder: no claim'
                    if stor26[address(msg.sender)] < stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) >= 0:
                        revert with 0, 17
                    if stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    stor26[address(msg.sender)] = -0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19
                    if stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19):
                        require ext_code.size(stor17)
                        call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args sub_87cd5989Address, address(arg1), stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return (stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19))
            else:
                if stor23 <= stor25:
                    if not -stor19:
                        revert with 0, 'DripRewarder: no claim'
                    if False and balanceOf[address(msg.sender)] > 0:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if 0 / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if 0 / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                        revert with 0, 17
                    if stor26[address(msg.sender)] < 0 and 0 / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor26[address(msg.sender)] + (0 / stor19):
                        if stor26[address(msg.sender)] + (0 / stor19) <= 0:
                            revert with 0, 'DripRewarder: no claim'
                        if stor26[address(msg.sender)] < stor26[address(msg.sender)] + (0 / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + (0 / stor19) >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] + (0 / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + (0 / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        stor26[address(msg.sender)] = -0 / stor19
                        if stor26[address(msg.sender)] + (0 / stor19):
                            require ext_code.size(stor17)
                            call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_87cd5989Address, address(arg1), stor26[address(msg.sender)] + (0 / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return (stor26[address(msg.sender)] + (0 / stor19))
                else:
                    if stor23 < stor25:
                        revert with 0, 17
                    if not -stor19:
                        revert with 0, 'DripRewarder: no claim'
                    if stor23 - stor25 and balanceOf[address(msg.sender)] > -1 / stor23 - stor25:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                        revert with 0, 17
                    if stor26[address(msg.sender)] < 0 and (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19):
                        if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) <= 0:
                            revert with 0, 'DripRewarder: no claim'
                        if stor26[address(msg.sender)] < stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        stor26[address(msg.sender)] = -(stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19
                        if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19):
                            require ext_code.size(stor17)
                            call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_87cd5989Address, address(arg1), stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return (stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19))
        else:
            if stor22 == -1:
                if block.timestamp < stor21:
                    revert with 0, 17
                if not uint32(stor24.field_0):
                    revert with 0, 18
                if block.timestamp - stor21 / uint32(stor24.field_0) and sub_6c396270 > -1 / block.timestamp - stor21 / uint32(stor24.field_0):
                    revert with 0, 17
                if stor25 > !(block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270):
                    revert with 0, 17
                if stor23 >= stor25 + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270):
                    if not -stor19:
                        revert with 0, 'DripRewarder: no claim'
                    if block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 and balanceOf[address(msg.sender)] > -1 / block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                        revert with 0, 17
                    if stor26[address(msg.sender)] < 0 and block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19):
                        if stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) <= 0:
                            revert with 0, 'DripRewarder: no claim'
                        if stor26[address(msg.sender)] < stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        stor26[address(msg.sender)] = -block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19
                        if stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19):
                            require ext_code.size(stor17)
                            call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_87cd5989Address, address(arg1), stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return (stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19))
                else:
                    if stor23 <= stor25:
                        if not -stor19:
                            revert with 0, 'DripRewarder: no claim'
                        if False and balanceOf[address(msg.sender)] > 0:
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if 0 / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'contrib'
                        if 0 / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] < 0 and 0 / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if ext_call.return_data[0] >= stor26[address(msg.sender)] + (0 / stor19):
                            if stor26[address(msg.sender)] + (0 / stor19) <= 0:
                                revert with 0, 'DripRewarder: no claim'
                            if stor26[address(msg.sender)] < stor26[address(msg.sender)] + (0 / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + (0 / stor19) >= 0:
                                revert with 0, 17
                            if stor26[address(msg.sender)] + (0 / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + (0 / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            stor26[address(msg.sender)] = -0 / stor19
                            if stor26[address(msg.sender)] + (0 / stor19):
                                require ext_code.size(stor17)
                                call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args sub_87cd5989Address, address(arg1), stor26[address(msg.sender)] + (0 / stor19)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            return (stor26[address(msg.sender)] + (0 / stor19))
                    else:
                        if stor23 < stor25:
                            revert with 0, 17
                        if not -stor19:
                            revert with 0, 'DripRewarder: no claim'
                        if stor23 - stor25 and balanceOf[address(msg.sender)] > -1 / stor23 - stor25:
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'contrib'
                        if (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] < 0 and (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if ext_call.return_data[0] >= stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19):
                            if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) <= 0:
                                revert with 0, 'DripRewarder: no claim'
                            if stor26[address(msg.sender)] < stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) >= 0:
                                revert with 0, 17
                            if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            stor26[address(msg.sender)] = -(stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19
                            if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19):
                                require ext_code.size(stor17)
                                call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args sub_87cd5989Address, address(arg1), stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            return (stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19))
            else:
                if block.timestamp < stor22:
                    revert with 0, 17
                if not uint32(stor24.field_0):
                    revert with 0, 18
                if block.timestamp - stor22 / uint32(stor24.field_0) and sub_6c396270 > -1 / block.timestamp - stor22 / uint32(stor24.field_0):
                    revert with 0, 17
                if stor25 > !(block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270):
                    revert with 0, 17
                if stor23 >= stor25 + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270):
                    if not -stor19:
                        revert with 0, 'DripRewarder: no claim'
                    if block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 and balanceOf[address(msg.sender)] > -1 / block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                        revert with 0, 17
                    if stor26[address(msg.sender)] < 0 and block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19):
                        if stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) <= 0:
                            revert with 0, 'DripRewarder: no claim'
                        if stor26[address(msg.sender)] < stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        stor26[address(msg.sender)] = -block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19
                        if stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19):
                            require ext_code.size(stor17)
                            call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_87cd5989Address, address(arg1), stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return (stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19))
                else:
                    if stor23 <= stor25:
                        if not -stor19:
                            revert with 0, 'DripRewarder: no claim'
                        if False and balanceOf[address(msg.sender)] > 0:
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if 0 / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'contrib'
                        if 0 / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] < 0 and 0 / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if ext_call.return_data[0] >= stor26[address(msg.sender)] + (0 / stor19):
                            if stor26[address(msg.sender)] + (0 / stor19) <= 0:
                                revert with 0, 'DripRewarder: no claim'
                            if stor26[address(msg.sender)] < stor26[address(msg.sender)] + (0 / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + (0 / stor19) >= 0:
                                revert with 0, 17
                            if stor26[address(msg.sender)] + (0 / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + (0 / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            stor26[address(msg.sender)] = -0 / stor19
                            if stor26[address(msg.sender)] + (0 / stor19):
                                require ext_code.size(stor17)
                                call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args sub_87cd5989Address, address(arg1), stor26[address(msg.sender)] + (0 / stor19)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            return (stor26[address(msg.sender)] + (0 / stor19))
                    else:
                        if stor23 < stor25:
                            revert with 0, 17
                        if not -stor19:
                            revert with 0, 'DripRewarder: no claim'
                        if stor23 - stor25 and balanceOf[address(msg.sender)] > -1 / stor23 - stor25:
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'contrib'
                        if (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] < 0 and (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if ext_call.return_data[0] >= stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19):
                            if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) <= 0:
                                revert with 0, 'DripRewarder: no claim'
                            if stor26[address(msg.sender)] < stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) >= 0:
                                revert with 0, 17
                            if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            stor26[address(msg.sender)] = -(stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19
                            if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19):
                                require ext_code.size(stor17)
                                call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args sub_87cd5989Address, address(arg1), stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            return (stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19))
        if ext_call.return_data[0] <= 0:
            revert with 0, 'DripRewarder: no claim'
        if stor26[address(msg.sender)] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
            revert with 0, 17
        if ext_call.return_data[0] < 0 and stor26[address(msg.sender)] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        stor26[address(msg.sender)] -= ext_call.return_data[0]
        if ext_call.return_data[0]:
            require ext_code.size(stor17)
            call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args sub_87cd5989Address, address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if block.timestamp < stor21:
            if not uint32(stor24.field_0):
                revert with 0, 18
            if 0 / uint32(stor24.field_0) and sub_6c396270 > -1 / 0 / uint32(stor24.field_0):
                revert with 0, 17
            if stor25 > !(0 / uint32(stor24.field_0) * sub_6c396270):
                revert with 0, 17
            if stor23 >= stor25 + (0 / uint32(stor24.field_0) * sub_6c396270):
                if not -stor19:
                    revert with 0, 'DripRewarder: no claim'
                if 0 / uint32(stor24.field_0) * sub_6c396270 and balanceOf[address(msg.sender)] > -1 / 0 / uint32(stor24.field_0) * sub_6c396270:
                    revert with 0, 17
                if not stor19:
                    revert with 0, 18
                if 0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'contrib'
                if 0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                    revert with 0, 17
                if stor26[address(msg.sender)] < 0 and 0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if ext_call.return_data[0] >= stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19):
                    if stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) <= 0:
                        revert with 0, 'DripRewarder: no claim'
                    if stor26[address(msg.sender)] < stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) >= 0:
                        revert with 0, 17
                    if stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    stor26[address(msg.sender)] = -0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19
                    if stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19):
                        require ext_code.size(stor17)
                        call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args sub_87cd5989Address, msg.sender, stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    return (stor26[address(msg.sender)] + (0 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19))
            else:
                if stor23 <= stor25:
                    if not -stor19:
                        revert with 0, 'DripRewarder: no claim'
                    if False and balanceOf[address(msg.sender)] > 0:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if 0 / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if 0 / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                        revert with 0, 17
                    if stor26[address(msg.sender)] < 0 and 0 / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor26[address(msg.sender)] + (0 / stor19):
                        if stor26[address(msg.sender)] + (0 / stor19) <= 0:
                            revert with 0, 'DripRewarder: no claim'
                        if stor26[address(msg.sender)] < stor26[address(msg.sender)] + (0 / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + (0 / stor19) >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] + (0 / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + (0 / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        stor26[address(msg.sender)] = -0 / stor19
                        if stor26[address(msg.sender)] + (0 / stor19):
                            require ext_code.size(stor17)
                            call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_87cd5989Address, msg.sender, stor26[address(msg.sender)] + (0 / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return (stor26[address(msg.sender)] + (0 / stor19))
                else:
                    if stor23 < stor25:
                        revert with 0, 17
                    if not -stor19:
                        revert with 0, 'DripRewarder: no claim'
                    if stor23 - stor25 and balanceOf[address(msg.sender)] > -1 / stor23 - stor25:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                        revert with 0, 17
                    if stor26[address(msg.sender)] < 0 and (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19):
                        if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) <= 0:
                            revert with 0, 'DripRewarder: no claim'
                        if stor26[address(msg.sender)] < stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        stor26[address(msg.sender)] = -(stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19
                        if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19):
                            require ext_code.size(stor17)
                            call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_87cd5989Address, msg.sender, stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return (stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19))
        else:
            if stor22 == -1:
                if block.timestamp < stor21:
                    revert with 0, 17
                if not uint32(stor24.field_0):
                    revert with 0, 18
                if block.timestamp - stor21 / uint32(stor24.field_0) and sub_6c396270 > -1 / block.timestamp - stor21 / uint32(stor24.field_0):
                    revert with 0, 17
                if stor25 > !(block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270):
                    revert with 0, 17
                if stor23 >= stor25 + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270):
                    if not -stor19:
                        revert with 0, 'DripRewarder: no claim'
                    if block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 and balanceOf[address(msg.sender)] > -1 / block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                        revert with 0, 17
                    if stor26[address(msg.sender)] < 0 and block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19):
                        if stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) <= 0:
                            revert with 0, 'DripRewarder: no claim'
                        if stor26[address(msg.sender)] < stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        stor26[address(msg.sender)] = -block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19
                        if stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19):
                            require ext_code.size(stor17)
                            call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_87cd5989Address, msg.sender, stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return (stor26[address(msg.sender)] + (block.timestamp - stor21 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19))
                else:
                    if stor23 <= stor25:
                        if not -stor19:
                            revert with 0, 'DripRewarder: no claim'
                        if False and balanceOf[address(msg.sender)] > 0:
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if 0 / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'contrib'
                        if 0 / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] < 0 and 0 / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if ext_call.return_data[0] >= stor26[address(msg.sender)] + (0 / stor19):
                            if stor26[address(msg.sender)] + (0 / stor19) <= 0:
                                revert with 0, 'DripRewarder: no claim'
                            if stor26[address(msg.sender)] < stor26[address(msg.sender)] + (0 / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + (0 / stor19) >= 0:
                                revert with 0, 17
                            if stor26[address(msg.sender)] + (0 / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + (0 / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            stor26[address(msg.sender)] = -0 / stor19
                            if stor26[address(msg.sender)] + (0 / stor19):
                                require ext_code.size(stor17)
                                call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args sub_87cd5989Address, msg.sender, stor26[address(msg.sender)] + (0 / stor19)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            return (stor26[address(msg.sender)] + (0 / stor19))
                    else:
                        if stor23 < stor25:
                            revert with 0, 17
                        if not -stor19:
                            revert with 0, 'DripRewarder: no claim'
                        if stor23 - stor25 and balanceOf[address(msg.sender)] > -1 / stor23 - stor25:
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'contrib'
                        if (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] < 0 and (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if ext_call.return_data[0] >= stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19):
                            if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) <= 0:
                                revert with 0, 'DripRewarder: no claim'
                            if stor26[address(msg.sender)] < stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) >= 0:
                                revert with 0, 17
                            if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            stor26[address(msg.sender)] = -(stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19
                            if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19):
                                require ext_code.size(stor17)
                                call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args sub_87cd5989Address, msg.sender, stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            return (stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19))
            else:
                if block.timestamp < stor22:
                    revert with 0, 17
                if not uint32(stor24.field_0):
                    revert with 0, 18
                if block.timestamp - stor22 / uint32(stor24.field_0) and sub_6c396270 > -1 / block.timestamp - stor22 / uint32(stor24.field_0):
                    revert with 0, 17
                if stor25 > !(block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270):
                    revert with 0, 17
                if stor23 >= stor25 + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270):
                    if not -stor19:
                        revert with 0, 'DripRewarder: no claim'
                    if block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 and balanceOf[address(msg.sender)] > -1 / block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270:
                        revert with 0, 17
                    if not stor19:
                        revert with 0, 18
                    if block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'contrib'
                    if block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                        revert with 0, 17
                    if stor26[address(msg.sender)] < 0 and block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if ext_call.return_data[0] >= stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19):
                        if stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) <= 0:
                            revert with 0, 'DripRewarder: no claim'
                        if stor26[address(msg.sender)] < stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        stor26[address(msg.sender)] = -block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19
                        if stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19):
                            require ext_code.size(stor17)
                            call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_87cd5989Address, msg.sender, stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        return (stor26[address(msg.sender)] + (block.timestamp - stor22 / uint32(stor24.field_0) * sub_6c396270 * balanceOf[address(msg.sender)] / stor19))
                else:
                    if stor23 <= stor25:
                        if not -stor19:
                            revert with 0, 'DripRewarder: no claim'
                        if False and balanceOf[address(msg.sender)] > 0:
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if 0 / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'contrib'
                        if 0 / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] < 0 and 0 / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if ext_call.return_data[0] >= stor26[address(msg.sender)] + (0 / stor19):
                            if stor26[address(msg.sender)] + (0 / stor19) <= 0:
                                revert with 0, 'DripRewarder: no claim'
                            if stor26[address(msg.sender)] < stor26[address(msg.sender)] + (0 / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + (0 / stor19) >= 0:
                                revert with 0, 17
                            if stor26[address(msg.sender)] + (0 / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + (0 / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            stor26[address(msg.sender)] = -0 / stor19
                            if stor26[address(msg.sender)] + (0 / stor19):
                                require ext_code.size(stor17)
                                call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args sub_87cd5989Address, msg.sender, stor26[address(msg.sender)] + (0 / stor19)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            return (stor26[address(msg.sender)] + (0 / stor19))
                    else:
                        if stor23 < stor25:
                            revert with 0, 17
                        if not -stor19:
                            revert with 0, 'DripRewarder: no claim'
                        if stor23 - stor25 and balanceOf[address(msg.sender)] > -1 / stor23 - stor25:
                            revert with 0, 17
                        if not stor19:
                            revert with 0, 18
                        if (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 'contrib'
                        if (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 > -stor26[address(msg.sender)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor26[address(msg.sender)] >= 0:
                            revert with 0, 17
                        if stor26[address(msg.sender)] < 0 and (stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19 < -stor26[address(msg.sender)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if ext_call.return_data[0] >= stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19):
                            if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) <= 0:
                                revert with 0, 'DripRewarder: no claim'
                            if stor26[address(msg.sender)] < stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) >= 0:
                                revert with 0, 17
                            if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) < 0 and stor26[address(msg.sender)] > stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            stor26[address(msg.sender)] = -(stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19
                            if stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19):
                                require ext_code.size(stor17)
                                call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args sub_87cd5989Address, msg.sender, stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            return (stor26[address(msg.sender)] + ((stor23 * balanceOf[address(msg.sender)]) - (stor25 * balanceOf[address(msg.sender)]) / stor19))
        if ext_call.return_data[0] <= 0:
            revert with 0, 'DripRewarder: no claim'
        if stor26[address(msg.sender)] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
            revert with 0, 17
        if ext_call.return_data[0] < 0 and stor26[address(msg.sender)] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        stor26[address(msg.sender)] -= ext_call.return_data[0]
        if ext_call.return_data[0]:
            require ext_code.size(stor17)
            call stor17.transferTokenTo(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args sub_87cd5989Address, msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}



}
