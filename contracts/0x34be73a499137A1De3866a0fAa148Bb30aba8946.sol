contract main {




// =====================  Runtime code  =====================


#
#  - sub_4f079e5d(?)
#  - sub_ac9e520c(?)
#
const REVISION = 21


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor408;
mapping of struct stake;
array of struct stor410;
mapping of uint256 stor411;
mapping of uint256 stor412;
mapping of uint256 stor413;
address treasurerAddress;
array of struct stor415;
address sub_dfabb4d7Address;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getStake(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return stake[address(arg1)][address(arg2)].field_0, 
           stake[address(arg1)][address(arg2)].field_256,
           stake[address(arg1)][address(arg2)].field_512
}

function owner() payable {
    return owner
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

function sub_dfabb4d7(?) payable {
    return sub_dfabb4d7Address
}

function treasurer() payable {
    return treasurerAddress
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0, 'xWOW is not transferable', 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    revert with 0, 'xWOW is not transferable', 0
}

function sub_ade8d43c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_dfabb4d7Address = address(arg1)
}

function sub_9e097dcb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor411[address(arg1)]:
        stor410.length++
        stor410[stor410.length].field_0 = address(arg1)
        stor410[stor410.length].field_160 = 0
        stor411[address(arg1)] = stor410.length
    stor412[address(arg1)] = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8af86cfa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(arg1)][address(msg.sender)] = 0
    emit Approval(0, address(arg1), msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_a4ce93c9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor408 == address(arg1):
        return arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor408)
    staticcall stor408.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(2 * ceil32(return_data.size)) + 197 len 31]
    if not ext_call.return_data[0] * arg2:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if 2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != 2:
        revert with 0, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(2 * ceil32(return_data.size)) + 197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0])
}

function sub_48782a13(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require arg1.length == arg2.length
    stor415.length = 0
    mem[0] = 415
    idx = 0
    while stor415.length > idx:
        stor415[idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length - 1:
        _64 = mem[64]
        mem[64] = mem[64] + 128
        require idx < mem[96]
        mem[_64] = mem[(32 * idx) + 158 len 2]
        require idx + 1 < mem[96]
        mem[_64 + 32] = mem[(32 * idx + 1) + 158 len 2]
        require idx < mem[(32 * arg1.length) + 128]
        mem[_64 + 64] = mem[(32 * idx) + (32 * arg1.length) + 178 len 14]
        require idx + 1 < mem[(32 * arg1.length) + 128]
        mem[_64 + 96] = mem[(32 * idx + 1) + (32 * arg1.length) + 178 len 14]
        stor415.length++
        mem[0] = 415
        stor415[stor415.length].field_0 = mem[_64 + 30 len 2]
        stor415[stor415.length].field_16 = mem[_64 + 62 len 2]
        stor415[stor415.length].field_32 = mem[_64 + 82 len 14]
        stor415[stor415.length].field_144 = mem[_64 + 114 len 14]
        idx = idx + 1
        continue 
    _62 = mem[64]
    mem[64] = mem[64] + 128
    require arg1.length - 1 < mem[96]
    mem[_62] = mem[(32 * arg1.length - 1) + 158 len 2]
    mem[_62 + 32] = 65535
    require arg1.length - 1 < mem[(32 * arg1.length) + 128]
    mem[_62 + 64] = mem[(32 * arg1.length - 1) + (32 * arg1.length) + 178 len 14]
    require arg1.length - 1 < mem[(32 * arg1.length) + 128]
    stor415.length++
    mem[0] = 415
    stor415[stor415.length].field_0 = mem[_62 + 30 len 2]
    stor415[stor415.length].field_16 = 65535
    stor415[stor415.length].field_32 = mem[(32 * arg1.length - 1) + (32 * arg1.length) + 178 len 14]
    stor415[stor415.length].field_144 = mem[(32 * arg1.length - 1) + (32 * arg1.length) + 178 len 14]
}

function unstake(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stake[address(arg1)][address(arg2)].field_256 > block.timestamp:
        revert with 0, 
                    32,
                    45,
                    0x73556e61626c6520746f20756e7374616b652066756e647320647572696e67207374616b696e6720706572696f, mem[365 len 19] >> 104,
                    0
    if allowance[address(arg1)][address(this.address)] < stake[address(arg1)][address(arg2)].field_512:
        revert with 0, 'Invali', 0
    require ext_code.size(treasurerAddress)
    call treasurerAddress.claimAll(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg1:
        revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[549 len 31]
    if stake[address(arg1)][address(arg2)].field_512 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[514 len 30], mem[574 len 2]
    balanceOf[address(arg1)] -= stake[address(arg1)][address(arg2)].field_512
    if stake[address(arg1)][address(arg2)].field_512 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= stake[address(arg1)][address(arg2)].field_512
    emit Transfer(stake[address(arg1)][address(arg2)].field_512, arg1, 0);
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), stake[address(arg1)][address(arg2)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stake[address(arg1)][address(arg2)].field_0 > stor413[address(arg2)]:
        revert with 0, 'SafeMath: subtraction overflow'
    stor413[address(arg2)] -= stake[address(arg1)][address(arg2)].field_0
    stake[address(arg1)][address(arg2)].field_0 = 0
    stake[address(arg1)][address(arg2)].field_256 = 0
    stake[address(arg1)][address(arg2)].field_512 = 0
    require ext_code.size(sub_dfabb4d7Address)
    call sub_dfabb4d7Address.0x3b68ccdb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[ceil32(return_data.size) + 808 len 28]
    if not this.address:
        revert with 0, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[ceil32(return_data.size) + 806 len 30]
    allowance[address(arg1)][address(this.address)] = 0
    emit Approval(0, arg1, this.address);
}

function sub_b32890bc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == uint16(arg3)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    require 0 < stor415.length
    mem[0] = 415
    mem[64] = 416
    mem[352] = 27
    mem[384] = 'Staking period is too short'
    if uint16(arg3) < uint16(stor415.field_0):
        revert with 0, 'Staking period is too short', 0
    idx = 0
    s = 224
    while idx < stor415.length:
        mem[0] = 415
        _542 = mem[64]
        mem[64] = mem[64] + 128
        mem[_542] = stor415[idx].field_0
        mem[_542 + 32] = stor415[idx].field_16
        mem[_542 + 64] = stor415[idx].field_32
        mem[_542 + 96] = stor415[idx].field_144
        if uint16(arg3) >= stor415[idx].field_16:
            idx = idx + 1
            s = _542
            continue 
        _551 = mem[64]
        mem[64] = mem[64] + 64
        mem[_551] = 30
        mem[_551 + 32] = 'SafeMath: subtraction overflow'
        if stor415[idx].field_0 > stor415[idx].field_16:
            _557 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _557 + 68] = mem[idx + _551 + 32]
                idx = idx + 32
                continue 
            mem[_557 + 68] = mem[_557 + 70 len 30]
            revert with memory
              from mem[64]
               len _557 + -mem[64] + 100
        _566 = mem[64]
        mem[64] = mem[64] + 64
        mem[_566] = 30
        mem[_566 + 32] = 'SafeMath: subtraction overflow'
        if stor415[idx].field_0 > uint16(arg3):
            _576 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _576 + 68] = mem[idx + _566 + 32]
                idx = idx + 32
                continue 
            mem[_576 + 68] = mem[_576 + 70 len 30]
            revert with memory
              from mem[64]
               len _576 + -mem[64] + 100
        _586 = mem[64]
        mem[64] = mem[64] + 64
        mem[_586] = 30
        mem[_586 + 32] = 'SafeMath: subtraction overflow'
        if stor415[idx].field_32 > stor415[idx].field_144:
            _593 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _593 + 68] = mem[idx + _586 + 32]
                idx = idx + 32
                continue 
            mem[_593 + 68] = mem[_593 + 70 len 30]
            revert with memory
              from mem[64]
               len _593 + -mem[64] + 100
        if not stor415[idx].field_144 - stor415[idx].field_32:
            _614 = mem[64]
            mem[64] = mem[64] + 64
            mem[_614] = 26
            mem[_614 + 32] = 'SafeMath: division by zero'
            if not stor415[idx].field_16 - stor415[idx].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _614 + 32]
                    idx = idx + 32
                    continue 
            else:
                if (0 / stor415[idx].field_16 - stor415[idx].field_0) + stor415[idx].field_32 < stor415[idx].field_32:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(arg1)
                mem[32] = 412
                if stor408 == address(arg1):
                    if not arg2:
                        return 0
                    if (0 / stor415[idx].field_16 - stor415[idx].field_0 * arg2) + (stor415[idx].field_32 * arg2) / arg2 != (0 / stor415[idx].field_16 - stor415[idx].field_0) + stor415[idx].field_32:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (0 / stor415[idx].field_16 - stor415[idx].field_0 * arg2) + (stor415[idx].field_32 * arg2):
                        return 0
                    if (0 / stor415[idx].field_16 - stor415[idx].field_0 * arg2 * stor412[address(arg1)]) + (stor415[idx].field_32 * arg2 * stor412[address(arg1)]) / (0 / stor415[idx].field_16 - stor415[idx].field_0 * arg2) + (stor415[idx].field_32 * arg2) != stor412[address(arg1)]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    return ((0 / stor415[idx].field_16 - stor415[idx].field_0 * arg2 * stor412[address(arg1)]) + (stor415[idx].field_32 * arg2 * stor412[address(arg1)]) / 100 * 10^6)
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _682 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _690 = mem[_682]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(stor408)
                staticcall stor408.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _712 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _717 = mem[_712]
                if not arg2:
                    _779 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_779] = 26
                    mem[_779 + 32] = 'SafeMath: division by zero'
                    if _690:
                        if not 0 / _690:
                            return 0
                        if (0 / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _690) + (stor415[idx].field_32 * 0 / _690) / 0 / _690 != (0 / stor415[idx].field_16 - stor415[idx].field_0) + stor415[idx].field_32:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (0 / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _690) + (stor415[idx].field_32 * 0 / _690):
                            return 0
                        if (0 / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _690 * stor412[address(arg1)]) + (stor415[idx].field_32 * 0 / _690 * stor412[address(arg1)]) / (0 / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _690) + (stor415[idx].field_32 * 0 / _690) != stor412[address(arg1)]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        return ((0 / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _690 * stor412[address(arg1)]) + (stor415[idx].field_32 * 0 / _690 * stor412[address(arg1)]) / 100 * 10^6)
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _779 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if mem[_712] * arg2 / arg2 != mem[_712]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not mem[_712] * arg2:
                        _795 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_795] = 26
                        mem[_795 + 32] = 'SafeMath: division by zero'
                        if _690:
                            if not 0 / _690:
                                return 0
                            if (0 / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _690) + (stor415[idx].field_32 * 0 / _690) / 0 / _690 != (0 / stor415[idx].field_16 - stor415[idx].field_0) + stor415[idx].field_32:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (0 / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _690) + (stor415[idx].field_32 * 0 / _690):
                                return 0
                            if (0 / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _690 * stor412[address(arg1)]) + (stor415[idx].field_32 * 0 / _690 * stor412[address(arg1)]) / (0 / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _690) + (stor415[idx].field_32 * 0 / _690) != stor412[address(arg1)]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            return ((0 / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _690 * stor412[address(arg1)]) + (stor415[idx].field_32 * 0 / _690 * stor412[address(arg1)]) / 100 * 10^6)
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _795 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 2 * mem[_712] * arg2 / mem[_712] * arg2 != 2:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _810 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_810] = 26
                        mem[_810 + 32] = 'SafeMath: division by zero'
                        if _690:
                            if not 2 * _717 * arg2 / _690:
                                return 0
                            if (0 / stor415[idx].field_16 - stor415[idx].field_0 * 2 * _717 * arg2 / _690) + (stor415[idx].field_32 * 2 * _717 * arg2 / _690) / 2 * _717 * arg2 / _690 != (0 / stor415[idx].field_16 - stor415[idx].field_0) + stor415[idx].field_32:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (0 / stor415[idx].field_16 - stor415[idx].field_0 * 2 * _717 * arg2 / _690) + (stor415[idx].field_32 * 2 * _717 * arg2 / _690):
                                return 0
                            if (0 / stor415[idx].field_16 - stor415[idx].field_0 * 2 * _717 * arg2 / _690 * stor412[address(arg1)]) + (stor415[idx].field_32 * 2 * _717 * arg2 / _690 * stor412[address(arg1)]) / (0 / stor415[idx].field_16 - stor415[idx].field_0 * 2 * _717 * arg2 / _690) + (stor415[idx].field_32 * 2 * _717 * arg2 / _690) != stor412[address(arg1)]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            return ((0 / stor415[idx].field_16 - stor415[idx].field_0 * 2 * _717 * arg2 / _690 * stor412[address(arg1)]) + (stor415[idx].field_32 * 2 * _717 * arg2 / _690 * stor412[address(arg1)]) / 100 * 10^6)
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _810 + 32]
                            idx = idx + 32
                            continue 
        else:
            if (stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_144 - stor415[idx].field_32 != uint16(arg3) - stor415[idx].field_0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _618 = mem[64]
            mem[64] = mem[64] + 64
            mem[_618] = 26
            mem[_618 + 32] = 'SafeMath: division by zero'
            if not stor415[idx].field_16 - stor415[idx].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _618 + 32]
                    idx = idx + 32
                    continue 
            else:
                if ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0) + stor415[idx].field_32 < stor415[idx].field_32:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(arg1)
                mem[32] = 412
                if stor408 == address(arg1):
                    if not arg2:
                        return 0
                    if ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * arg2) + (stor415[idx].field_32 * arg2) / arg2 != ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0) + stor415[idx].field_32:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * arg2) + (stor415[idx].field_32 * arg2):
                        return 0
                    if ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * arg2 * stor412[address(arg1)]) + (stor415[idx].field_32 * arg2 * stor412[address(arg1)]) / ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * arg2) + (stor415[idx].field_32 * arg2) != stor412[address(arg1)]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    return (((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * arg2 * stor412[address(arg1)]) + (stor415[idx].field_32 * arg2 * stor412[address(arg1)]) / 100 * 10^6)
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _686 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _692 = mem[_686]
                mem[mem[64] + 4] = address(arg1)
                require ext_code.size(stor408)
                staticcall stor408.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _715 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _721 = mem[_715]
                if not arg2:
                    _793 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_793] = 26
                    mem[_793 + 32] = 'SafeMath: division by zero'
                    if _692:
                        if not 0 / _692:
                            return 0
                        if ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _692) + (stor415[idx].field_32 * 0 / _692) / 0 / _692 != ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0) + stor415[idx].field_32:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _692) + (stor415[idx].field_32 * 0 / _692):
                            return 0
                        if ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _692 * stor412[address(arg1)]) + (stor415[idx].field_32 * 0 / _692 * stor412[address(arg1)]) / ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _692) + (stor415[idx].field_32 * 0 / _692) != stor412[address(arg1)]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        return (((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _692 * stor412[address(arg1)]) + (stor415[idx].field_32 * 0 / _692 * stor412[address(arg1)]) / 100 * 10^6)
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _793 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if mem[_715] * arg2 / arg2 != mem[_715]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not mem[_715] * arg2:
                        _808 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_808] = 26
                        mem[_808 + 32] = 'SafeMath: division by zero'
                        if _692:
                            if not 0 / _692:
                                return 0
                            if ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _692) + (stor415[idx].field_32 * 0 / _692) / 0 / _692 != ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0) + stor415[idx].field_32:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _692) + (stor415[idx].field_32 * 0 / _692):
                                return 0
                            if ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _692 * stor412[address(arg1)]) + (stor415[idx].field_32 * 0 / _692 * stor412[address(arg1)]) / ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _692) + (stor415[idx].field_32 * 0 / _692) != stor412[address(arg1)]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            return (((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 0 / _692 * stor412[address(arg1)]) + (stor415[idx].field_32 * 0 / _692 * stor412[address(arg1)]) / 100 * 10^6)
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _808 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 2 * mem[_715] * arg2 / mem[_715] * arg2 != 2:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _825 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_825] = 26
                        mem[_825 + 32] = 'SafeMath: division by zero'
                        if _692:
                            if not 2 * _721 * arg2 / _692:
                                return 0
                            if ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 2 * _721 * arg2 / _692) + (stor415[idx].field_32 * 2 * _721 * arg2 / _692) / 2 * _721 * arg2 / _692 != ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0) + stor415[idx].field_32:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 2 * _721 * arg2 / _692) + (stor415[idx].field_32 * 2 * _721 * arg2 / _692):
                                return 0
                            if ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 2 * _721 * arg2 / _692 * stor412[address(arg1)]) + (stor415[idx].field_32 * 2 * _721 * arg2 / _692 * stor412[address(arg1)]) / ((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 2 * _721 * arg2 / _692) + (stor415[idx].field_32 * 2 * _721 * arg2 / _692) != stor412[address(arg1)]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            return (((stor415[idx].field_144 * uint16(arg3)) - (stor415[idx].field_32 * uint16(arg3)) - (stor415[idx].field_144 * stor415[idx].field_0) + (stor415[idx].field_32 * stor415[idx].field_0) / stor415[idx].field_16 - stor415[idx].field_0 * 2 * _721 * arg2 / _692 * stor412[address(arg1)]) + (stor415[idx].field_32 * 2 * _721 * arg2 / _692 * stor412[address(arg1)]) / 100 * 10^6)
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _825 + 32]
                            idx = idx + 32
                            continue 
        revert with 0, 'SafeMath: division by zero'
    _539 = mem[s]
    _540 = mem[s + 32]
    _543 = mem[64]
    mem[64] = mem[64] + 64
    mem[_543] = 30
    mem[_543 + 32] = 'SafeMath: subtraction overflow'
    if uint16(_539) > uint16(_540):
        revert with 0, 'SafeMath: subtraction overflow'
    _552 = mem[s]
    _554 = mem[64]
    mem[64] = mem[64] + 64
    mem[_554] = 30
    mem[_554 + 32] = 'SafeMath: subtraction overflow'
    if uint16(_552) > uint16(arg3):
        revert with 0, 'SafeMath: subtraction overflow'
    _569 = mem[s + 64]
    _570 = mem[s + 96]
    _573 = mem[64]
    mem[64] = mem[64] + 64
    mem[_573] = 30
    mem[_573 + 32] = 'SafeMath: subtraction overflow'
    if Mask(112, 0, _569) > Mask(112, 0, _570):
        revert with 0, 'SafeMath: subtraction overflow'
    if not Mask(112, 0, _570) - Mask(112, 0, _569):
        _602 = mem[64]
        mem[64] = mem[64] + 64
        mem[_602] = 26
        mem[_602 + 32] = 'SafeMath: division by zero'
        if not uint16(_540) - uint16(_539):
            revert with 0, 'SafeMath: division by zero'
        _621 = mem[s + 64]
        if (0 / uint16(_540) - uint16(_539)) + mem[s + 82 len 14] < mem[s + 82 len 14]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = address(arg1)
        mem[32] = 412
        if stor408 == address(arg1):
            if not arg2:
                return 0
            if (0 / uint16(_540) - uint16(_539) * arg2) + (Mask(112, 0, _621) * arg2) / arg2 != (0 / uint16(_540) - uint16(_539)) + Mask(112, 0, _621):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (0 / uint16(_540) - uint16(_539) * arg2) + (Mask(112, 0, _621) * arg2):
                return 0
            if (0 / uint16(_540) - uint16(_539) * arg2 * stor412[address(arg1)]) + (Mask(112, 0, _621) * arg2 * stor412[address(arg1)]) / (0 / uint16(_540) - uint16(_539) * arg2) + (Mask(112, 0, _621) * arg2) != stor412[address(arg1)]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            return ((0 / uint16(_540) - uint16(_539) * arg2 * stor412[address(arg1)]) + (Mask(112, 0, _621) * arg2 * stor412[address(arg1)]) / 100 * 10^6)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _672 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _677 = mem[_672]
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(stor408)
        staticcall stor408.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _694 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _702 = mem[_694]
        if not arg2:
            _747 = mem[64]
            mem[64] = mem[64] + 64
            mem[_747] = 26
            mem[_747 + 32] = 'SafeMath: division by zero'
            if not _677:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / _677:
                return 0
            if (0 / uint16(_540) - uint16(_539) * 0 / _677) + (Mask(112, 0, _621) * 0 / _677) / 0 / _677 != (0 / uint16(_540) - uint16(_539)) + Mask(112, 0, _621):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (0 / uint16(_540) - uint16(_539) * 0 / _677) + (Mask(112, 0, _621) * 0 / _677):
                return 0
            if (0 / uint16(_540) - uint16(_539) * 0 / _677 * stor412[address(arg1)]) + (Mask(112, 0, _621) * 0 / _677 * stor412[address(arg1)]) / (0 / uint16(_540) - uint16(_539) * 0 / _677) + (Mask(112, 0, _621) * 0 / _677) != stor412[address(arg1)]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            return ((0 / uint16(_540) - uint16(_539) * 0 / _677 * stor412[address(arg1)]) + (Mask(112, 0, _621) * 0 / _677 * stor412[address(arg1)]) / 100 * 10^6)
        if mem[_694] * arg2 / arg2 != mem[_694]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not mem[_694] * arg2:
            _754 = mem[64]
            mem[64] = mem[64] + 64
            mem[_754] = 26
            mem[_754 + 32] = 'SafeMath: division by zero'
            if not _677:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / _677:
                return 0
            if (0 / uint16(_540) - uint16(_539) * 0 / _677) + (Mask(112, 0, _621) * 0 / _677) / 0 / _677 != (0 / uint16(_540) - uint16(_539)) + Mask(112, 0, _621):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (0 / uint16(_540) - uint16(_539) * 0 / _677) + (Mask(112, 0, _621) * 0 / _677):
                return 0
            if (0 / uint16(_540) - uint16(_539) * 0 / _677 * stor412[address(arg1)]) + (Mask(112, 0, _621) * 0 / _677 * stor412[address(arg1)]) / (0 / uint16(_540) - uint16(_539) * 0 / _677) + (Mask(112, 0, _621) * 0 / _677) != stor412[address(arg1)]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            return ((0 / uint16(_540) - uint16(_539) * 0 / _677 * stor412[address(arg1)]) + (Mask(112, 0, _621) * 0 / _677 * stor412[address(arg1)]) / 100 * 10^6)
        if 2 * mem[_694] * arg2 / mem[_694] * arg2 != 2:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _760 = mem[64]
        mem[64] = mem[64] + 64
        mem[_760] = 26
        mem[_760 + 32] = 'SafeMath: division by zero'
        if not _677:
            revert with 0, 'SafeMath: division by zero'
        if not 2 * _702 * arg2 / _677:
            return 0
        if (0 / uint16(_540) - uint16(_539) * 2 * _702 * arg2 / _677) + (Mask(112, 0, _621) * 2 * _702 * arg2 / _677) / 2 * _702 * arg2 / _677 != (0 / uint16(_540) - uint16(_539)) + Mask(112, 0, _621):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (0 / uint16(_540) - uint16(_539) * 2 * _702 * arg2 / _677) + (Mask(112, 0, _621) * 2 * _702 * arg2 / _677):
            return 0
        if (0 / uint16(_540) - uint16(_539) * 2 * _702 * arg2 / _677 * stor412[address(arg1)]) + (Mask(112, 0, _621) * 2 * _702 * arg2 / _677 * stor412[address(arg1)]) / (0 / uint16(_540) - uint16(_539) * 2 * _702 * arg2 / _677) + (Mask(112, 0, _621) * 2 * _702 * arg2 / _677) != stor412[address(arg1)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        return ((0 / uint16(_540) - uint16(_539) * 2 * _702 * arg2 / _677 * stor412[address(arg1)]) + (Mask(112, 0, _621) * 2 * _702 * arg2 / _677 * stor412[address(arg1)]) / 100 * 10^6)
    if (Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / Mask(112, 0, _570) - Mask(112, 0, _569) != uint16(arg3) - uint16(_552):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    _604 = mem[64]
    mem[64] = mem[64] + 64
    mem[_604] = 26
    mem[_604 + 32] = 'SafeMath: division by zero'
    if not uint16(_540) - uint16(_539):
        revert with 0, 'SafeMath: division by zero'
    _627 = mem[s + 64]
    if ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539)) + mem[s + 82 len 14] < mem[s + 82 len 14]:
        revert with 0, 'SafeMath: addition overflow'
    mem[0] = address(arg1)
    mem[32] = 412
    if stor408 == address(arg1):
        if not arg2:
            return 0
        if ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * arg2) + (Mask(112, 0, _627) * arg2) / arg2 != ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539)) + Mask(112, 0, _627):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * arg2) + (Mask(112, 0, _627) * arg2):
            return 0
        if ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * arg2 * stor412[address(arg1)]) + (Mask(112, 0, _627) * arg2 * stor412[address(arg1)]) / ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * arg2) + (Mask(112, 0, _627) * arg2) != stor412[address(arg1)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        return (((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * arg2 * stor412[address(arg1)]) + (Mask(112, 0, _627) * arg2 * stor412[address(arg1)]) / 100 * 10^6)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _674 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _680 = mem[_674]
    mem[mem[64] + 4] = address(arg1)
    require ext_code.size(stor408)
    staticcall stor408.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _698 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _707 = mem[_698]
    if not arg2:
        _752 = mem[64]
        mem[64] = mem[64] + 64
        mem[_752] = 26
        mem[_752 + 32] = 'SafeMath: division by zero'
        if not _680:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / _680:
            return 0
        if ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 0 / _680) + (Mask(112, 0, _627) * 0 / _680) / 0 / _680 != ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539)) + Mask(112, 0, _627):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 0 / _680) + (Mask(112, 0, _627) * 0 / _680):
            return 0
        if ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 0 / _680 * stor412[address(arg1)]) + (Mask(112, 0, _627) * 0 / _680 * stor412[address(arg1)]) / ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 0 / _680) + (Mask(112, 0, _627) * 0 / _680) != stor412[address(arg1)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        return (((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 0 / _680 * stor412[address(arg1)]) + (Mask(112, 0, _627) * 0 / _680 * stor412[address(arg1)]) / 100 * 10^6)
    if mem[_698] * arg2 / arg2 != mem[_698]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not mem[_698] * arg2:
        _758 = mem[64]
        mem[64] = mem[64] + 64
        mem[_758] = 26
        mem[_758 + 32] = 'SafeMath: division by zero'
        if not _680:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / _680:
            return 0
        if ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 0 / _680) + (Mask(112, 0, _627) * 0 / _680) / 0 / _680 != ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539)) + Mask(112, 0, _627):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 0 / _680) + (Mask(112, 0, _627) * 0 / _680):
            return 0
        if ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 0 / _680 * stor412[address(arg1)]) + (Mask(112, 0, _627) * 0 / _680 * stor412[address(arg1)]) / ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 0 / _680) + (Mask(112, 0, _627) * 0 / _680) != stor412[address(arg1)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        return (((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 0 / _680 * stor412[address(arg1)]) + (Mask(112, 0, _627) * 0 / _680 * stor412[address(arg1)]) / 100 * 10^6)
    if 2 * mem[_698] * arg2 / mem[_698] * arg2 != 2:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    _767 = mem[64]
    mem[64] = mem[64] + 64
    mem[_767] = 26
    mem[_767 + 32] = 'SafeMath: division by zero'
    if not _680:
        revert with 0, 'SafeMath: division by zero'
    if not 2 * _707 * arg2 / _680:
        return 0
    if ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 2 * _707 * arg2 / _680) + (Mask(112, 0, _627) * 2 * _707 * arg2 / _680) / 2 * _707 * arg2 / _680 != ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539)) + Mask(112, 0, _627):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 2 * _707 * arg2 / _680) + (Mask(112, 0, _627) * 2 * _707 * arg2 / _680):
        return 0
    if ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 2 * _707 * arg2 / _680 * stor412[address(arg1)]) + (Mask(112, 0, _627) * 2 * _707 * arg2 / _680 * stor412[address(arg1)]) / ((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 2 * _707 * arg2 / _680) + (Mask(112, 0, _627) * 2 * _707 * arg2 / _680) != stor412[address(arg1)]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    return (((Mask(112, 0, _570) * uint16(arg3)) - (Mask(112, 0, _569) * uint16(arg3)) - (Mask(112, 0, _570) * uint16(_552)) + (Mask(112, 0, _569) * uint16(_552)) / uint16(_540) - uint16(_539) * 2 * _707 * arg2 / _680 * stor412[address(arg1)]) + (Mask(112, 0, _627) * 2 * _707 * arg2 / _680 * stor412[address(arg1)]) / 100 * 10^6)
}



}
