contract main {




// =====================  Runtime code  =====================


#
#  - sub_5f5d217d(?)
#  - withdrawFee(uint256 arg1)
#
const sub_5cd90e58(?) = 10^18

const sub_b94db6af(?) = 100000

const sub_f288a2e2(?) = 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05


uint8 stor0;
address coreAddress; offset 8
uint256 stor1;
uint256 sub_f8fa9cdb;
uint256 duration;
uint256 cycle;
uint256 sub_27e79c44;
uint8 stor6;
array of struct tranches;
address currencyAddress;
address stakerAddress;
uint32 stor10;
address strategyAddress;
uint256 stor10;
address devAddress;
mapping of uint256 userInfo;
mapping of struct sub_70907ef0;
mapping of struct sub_ae4f9c74;

function active() payable {
    return bool(stor6)
}

function duration() payable {
    return duration
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1]
}

function tranches(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tranches.length
    return tranches[arg1].field_0, tranches[arg1].field_256, tranches[arg1].field_512, tranches[arg1].field_768
}

function sub_27e79c44(?) payable {
    return sub_27e79c44
}

function devAddress() payable {
    return devAddress
}

function paused() payable {
    return bool(stor0)
}

function staker() payable {
    return stakerAddress
}

function cycle() payable {
    return cycle
}

function sub_70907ef0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_70907ef0[arg1][arg2].field_0, sub_70907ef0[arg1][arg2].field_256
}

function strategy() payable {
    return address(strategyAddress)
}

function sub_ae4f9c74(?) payable {
    require calldata.size - 4 >= 64
    return sub_ae4f9c74[arg1][arg2].field_0, 
           sub_ae4f9c74[arg1][arg2].field_256,
           sub_ae4f9c74[arg1][arg2].field_512,
           sub_ae4f9c74[arg1][arg2].field_768,
           sub_ae4f9c74[arg1][arg2].field_1024,
           sub_ae4f9c74[arg1][arg2].field_1280,
           sub_ae4f9c74[arg1][arg2].field_1536,
           sub_ae4f9c74[arg1][arg2].field_1792
}

function currency() payable {
    return currencyAddress
}

function core() payable {
    return coreAddress
}

function sub_f8fa9cdb(?) payable {
    return sub_f8fa9cdb
}

function _fallback() payable {
    revert
}

function sub_72ca5671(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tranches.length:
        revert with 0, 'invalid tranche id'
    if sub_70907ef0[msg.sender][arg1].field_0 >= cycle:
        return sub_70907ef0[msg.sender][arg1].field_256
    else:
        return 0
}

function setDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyGovernor: Caller is not a governor'
    duration = arg1
}

function setStaker(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyGovernor: Caller is not a governor'
    stakerAddress = arg1
}

function setStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyGovernor: Caller is not a governor'
    address(strategyAddress) = arg1
}

function setCore(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyGovernor: Caller is not a governor'
    coreAddress = arg1
    emit CoreUpdate(arg1);
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyGovernor: Caller is not a governor'
    devAddress = arg1
    emit SetDevAddress(arg1);
}

function pause() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CoreRef::onlyGuardianOrGovernor: Caller is not a guardian or governor'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CoreRef::onlyGuardianOrGovernor: Caller is not a guardian or governor'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function add(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyGovernor: Caller is not a governor'
    if arg1 <= 0:
        revert with 0, 'invalid target'
    if arg2 > 100000:
        revert with 0, 'invalid APY'
    if arg3 > 10000:
        revert with 0, 'invalid fee'
    if not arg2:
        tranches.length++
        tranches[tranches.length].field_0 = arg1
        tranches[tranches.length].field_256 = 0
        tranches[tranches.length].field_512 = 0
    else:
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        tranches.length++
        tranches[tranches.length].field_0 = arg1
        tranches[tranches.length].field_256 = 0
        tranches[tranches.length].field_512 = 10^18 * arg2 / 100000
    tranches[tranches.length].field_768 = arg3
    emit 0x955a633d: tranches.length - 1, arg1, arg2, arg3
}

function set(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyTimelock: Caller is not a timelock'
    if arg1 >= tranches.length:
        revert with 0, 'invalid tranche id'
    if arg2 < tranches[arg1].field_256:
        revert with 0, 'invalid target'
    if arg3 > 100000:
        revert with 0, 'invalid APY'
    if arg4 > 10000:
        revert with 0, 'invalid fee'
    require arg1 < tranches.length
    tranches[arg1].field_0 = arg2
    if not arg3:
        require arg1 < tranches.length
        tranches[arg1].field_512 = 0
    else:
        if 10^18 * arg3 / arg3 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        require arg1 < tranches.length
        tranches[arg1].field_512 = 10^18 * arg3 / 100000
    tranches[arg1].field_768 = arg4
    emit 0x7304cbcb: arg1, arg2, arg3, arg4
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < tranches.length:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 13)
        if sub_70907ef0[address(arg1)][idx].field_256:
            if sub_70907ef0[address(arg1)][idx].field_0 >= cycle:
                if sub_70907ef0[address(arg1)][idx].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _22 = mem[64]
                mem[64] = mem[64] + 256
                mem[_22] = 0
                mem[_22 + 32] = 0
                mem[_22 + 64] = 0
                mem[_22 + 96] = 0
                mem[_22 + 128] = 0
                mem[_22 + 160] = 0
                mem[_22 + 192] = 0
                mem[_22 + 224] = 0
                mem[0] = idx
                mem[32] = sha3(sub_70907ef0[address(arg1)][idx].field_0, 14)
                _26 = mem[64]
                mem[64] = mem[64] + 256
                mem[_26] = sub_ae4f9c74[stor13[address(arg1)][idx].field_0][idx].field_0
                mem[_26 + 32] = sub_ae4f9c74[stor13[address(arg1)][idx].field_0][idx].field_256
                mem[_26 + 64] = sub_ae4f9c74[stor13[address(arg1)][idx].field_0][idx].field_512
                mem[_26 + 96] = sub_ae4f9c74[stor13[address(arg1)][idx].field_0][idx].field_768
                mem[_26 + 128] = sub_ae4f9c74[stor13[address(arg1)][idx].field_0][idx].field_1024
                mem[_26 + 160] = sub_ae4f9c74[stor13[address(arg1)][idx].field_0][idx].field_1280
                mem[_26 + 192] = sub_ae4f9c74[stor13[address(arg1)][idx].field_0][idx].field_1536
                mem[_26 + 224] = sub_ae4f9c74[stor13[address(arg1)][idx].field_0][idx].field_1792
                if not sub_70907ef0[address(arg1)][idx].field_256:
                    if userInfo[address(arg1)] < userInfo[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if sub_ae4f9c74[stor13[address(arg1)][idx].field_0][idx].field_768 * sub_70907ef0[address(arg1)][idx].field_256 / sub_70907ef0[address(arg1)][idx].field_256 != sub_ae4f9c74[stor13[address(arg1)][idx].field_0][idx].field_768:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (sub_ae4f9c74[stor13[address(arg1)][idx].field_0][idx].field_768 * sub_70907ef0[address(arg1)][idx].field_256 / 10^18) + userInfo[address(arg1)] < userInfo[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return userInfo[address(arg1)], 0
}

function approveToken() payable {
    mem[100] = this.address
    mem[132] = address(strategyAddress)
    require ext_code.size(currencyAddress)
    staticcall currencyAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(strategyAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = address(strategyAddress)
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor10)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(currencyAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call currencyAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 0, stor10) == bool(0, Mask(224, 0, stor10))
            if not 0, Mask(224, 0, stor10):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function redeem(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if arg1 >= tranches.length:
        revert with 0, 'invalid tranche id'
    if stor6:
        revert with 0, 'already active'
    idx = 0
    while idx < tranches.length:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 13)
        if sub_70907ef0[address(msg.sender)][idx].field_0 < cycle:
            if sub_70907ef0[address(msg.sender)][idx].field_256:
                _48 = mem[64]
                mem[64] = mem[64] + 256
                mem[_48] = 0
                mem[_48 + 32] = 0
                mem[_48 + 64] = 0
                mem[_48 + 96] = 0
                mem[_48 + 128] = 0
                mem[_48 + 160] = 0
                mem[_48 + 192] = 0
                mem[_48 + 224] = 0
                mem[0] = idx
                mem[32] = sha3(sub_70907ef0[address(msg.sender)][idx].field_0, 14)
                _53 = mem[64]
                mem[64] = mem[64] + 256
                mem[_53] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_0
                mem[_53 + 32] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_256
                mem[_53 + 64] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_512
                mem[_53 + 96] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768
                mem[_53 + 128] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1024
                mem[_53 + 160] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1280
                mem[_53 + 192] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1536
                mem[_53 + 224] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1792
                if not sub_70907ef0[address(msg.sender)][idx].field_256:
                    if userInfo[address(msg.sender)] < userInfo[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_70907ef0[address(msg.sender)][idx].field_256 = 0
                    require ext_code.size(stakerAddress)
                    call stakerAddress.0x15c2fdc9 with:
                         gas gas_remaining wei
                        args idx, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = idx
                    mem[mem[64] + 64] = sub_70907ef0[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = sub_70907ef0[address(msg.sender)][idx].field_256
                    mem[mem[64] + 128] = 0
                    emit Harvest(msg.sender, idx, sub_70907ef0[address(msg.sender)][idx].field_0, sub_70907ef0[address(msg.sender)][idx].field_256, 0);
                else:
                    if sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / sub_70907ef0[address(msg.sender)][idx].field_256 != sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18) + userInfo[address(msg.sender)] < userInfo[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)] += sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18
                    sub_70907ef0[address(msg.sender)][idx].field_256 = 0
                    require ext_code.size(stakerAddress)
                    call stakerAddress.0x15c2fdc9 with:
                         gas gas_remaining wei
                        args idx, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = idx
                    mem[mem[64] + 64] = sub_70907ef0[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = sub_70907ef0[address(msg.sender)][idx].field_256
                    mem[mem[64] + 128] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18
                    emit Harvest(msg.sender, idx, sub_70907ef0[address(msg.sender)][idx].field_0, sub_70907ef0[address(msg.sender)][idx].field_256, sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18);
            sub_70907ef0[address(msg.sender)][idx].field_0 = cycle
        idx = idx + 1
        continue 
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not sub_70907ef0[msg.sender][arg1].field_256:
        revert with 0, 'not enough principal'
    require arg1 < tranches.length
    if sub_70907ef0[msg.sender][arg1].field_256 + userInfo[msg.sender] < userInfo[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[msg.sender] += sub_70907ef0[msg.sender][arg1].field_256
    if sub_70907ef0[msg.sender][arg1].field_256 > tranches[arg1].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    tranches[arg1].field_256 -= sub_70907ef0[msg.sender][arg1].field_256
    require ext_code.size(stakerAddress)
    call stakerAddress.0x15c2fdc9 with:
         gas gas_remaining wei
        args arg1, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_70907ef0[msg.sender][arg1].field_256 = 0
    emit Redeem(msg.sender, arg1, cycle, sub_70907ef0[msg.sender][arg1].field_256);
    stor1 = 1
}

function sub_975ff57a(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    mem[100] = msg.sender
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyGovernor: Caller is not a governor'
    if arg1 <= 0:
        revert with 0, 'Zero amount'
    if not arg1:
        mem[ceil32(return_data.size) + 132] = address(arg2)
        mem[ceil32(return_data.size) + 164] = arg1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(currencyAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call currencyAddress with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(arg2)
        require ext_code.size(currencyAddress)
        staticcall currencyAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg2)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 164] = arg1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(currencyAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call currencyAddress with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(arg2))
    call address(arg2).sendRewards(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    while idx < tranches.length:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 13)
        if sub_70907ef0[address(msg.sender)][idx].field_0 < cycle:
            if sub_70907ef0[address(msg.sender)][idx].field_256:
                _113 = mem[64]
                mem[64] = mem[64] + 256
                mem[_113] = 0
                mem[_113 + 32] = 0
                mem[_113 + 64] = 0
                mem[_113 + 96] = 0
                mem[_113 + 128] = 0
                mem[_113 + 160] = 0
                mem[_113 + 192] = 0
                mem[_113 + 224] = 0
                mem[0] = idx
                mem[32] = sha3(sub_70907ef0[address(msg.sender)][idx].field_0, 14)
                _118 = mem[64]
                mem[64] = mem[64] + 256
                mem[_118] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_0
                mem[_118 + 32] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_256
                mem[_118 + 64] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_512
                mem[_118 + 96] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768
                mem[_118 + 128] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1024
                mem[_118 + 160] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1280
                mem[_118 + 192] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1536
                mem[_118 + 224] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1792
                if not sub_70907ef0[address(msg.sender)][idx].field_256:
                    if userInfo[address(msg.sender)] < userInfo[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_70907ef0[address(msg.sender)][idx].field_256 = 0
                    require ext_code.size(stakerAddress)
                    call stakerAddress.0x15c2fdc9 with:
                         gas gas_remaining wei
                        args idx, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = idx
                    mem[mem[64] + 64] = sub_70907ef0[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = sub_70907ef0[address(msg.sender)][idx].field_256
                    mem[mem[64] + 128] = 0
                    emit Harvest(msg.sender, idx, sub_70907ef0[address(msg.sender)][idx].field_0, sub_70907ef0[address(msg.sender)][idx].field_256, 0);
                else:
                    if sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / sub_70907ef0[address(msg.sender)][idx].field_256 != sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18) + userInfo[address(msg.sender)] < userInfo[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)] += sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18
                    sub_70907ef0[address(msg.sender)][idx].field_256 = 0
                    require ext_code.size(stakerAddress)
                    call stakerAddress.0x15c2fdc9 with:
                         gas gas_remaining wei
                        args idx, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = idx
                    mem[mem[64] + 64] = sub_70907ef0[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = sub_70907ef0[address(msg.sender)][idx].field_256
                    mem[mem[64] + 128] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18
                    emit Harvest(msg.sender, idx, sub_70907ef0[address(msg.sender)][idx].field_0, sub_70907ef0[address(msg.sender)][idx].field_256, sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18);
            sub_70907ef0[address(msg.sender)][idx].field_0 = cycle
        idx = idx + 1
        continue 
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg1:
        revert with 0, 'invalid amount'
    mem[0] = msg.sender
    mem[32] = 12
    if arg1 > userInfo[msg.sender]:
        revert with 0, 'balance not enough'
    userInfo[msg.sender] -= arg1
    _121 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = arg1
    _123 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_121 + 100] = 32
    mem[_121 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(currencyAddress):
        revert with 0, 'Address: call to non-contract'
    _135 = mem[_123]
    mem[_121 + 164 len ceil32(mem[_123])] = mem[_123 + 32 len ceil32(mem[_123])]
    if ceil32(_135) > _135:
        mem[_135 + _121 + 164] = 0
    call currencyAddress with:
         gas gas_remaining wei
        args mem[_121 + 168 len _135 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_121 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_121 + 196] == bool(mem[_121 + 196])
            if not mem[_121 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Withdraw(msg.sender, arg1);
    stor1 = 1
}

function deposit(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    while idx < tranches.length:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 13)
        if sub_70907ef0[address(msg.sender)][idx].field_0 < cycle:
            if sub_70907ef0[address(msg.sender)][idx].field_256:
                _127 = mem[64]
                mem[64] = mem[64] + 256
                mem[_127] = 0
                mem[_127 + 32] = 0
                mem[_127 + 64] = 0
                mem[_127 + 96] = 0
                mem[_127 + 128] = 0
                mem[_127 + 160] = 0
                mem[_127 + 192] = 0
                mem[_127 + 224] = 0
                mem[0] = idx
                mem[32] = sha3(sub_70907ef0[address(msg.sender)][idx].field_0, 14)
                _132 = mem[64]
                mem[64] = mem[64] + 256
                mem[_132] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_0
                mem[_132 + 32] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_256
                mem[_132 + 64] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_512
                mem[_132 + 96] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768
                mem[_132 + 128] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1024
                mem[_132 + 160] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1280
                mem[_132 + 192] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1536
                mem[_132 + 224] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1792
                if not sub_70907ef0[address(msg.sender)][idx].field_256:
                    if userInfo[address(msg.sender)] < userInfo[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_70907ef0[address(msg.sender)][idx].field_256 = 0
                    require ext_code.size(stakerAddress)
                    call stakerAddress.0x15c2fdc9 with:
                         gas gas_remaining wei
                        args idx, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = idx
                    mem[mem[64] + 64] = sub_70907ef0[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = sub_70907ef0[address(msg.sender)][idx].field_256
                    mem[mem[64] + 128] = 0
                    emit Harvest(msg.sender, idx, sub_70907ef0[address(msg.sender)][idx].field_0, sub_70907ef0[address(msg.sender)][idx].field_256, 0);
                else:
                    if sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / sub_70907ef0[address(msg.sender)][idx].field_256 != sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18) + userInfo[address(msg.sender)] < userInfo[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)] += sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18
                    sub_70907ef0[address(msg.sender)][idx].field_256 = 0
                    require ext_code.size(stakerAddress)
                    call stakerAddress.0x15c2fdc9 with:
                         gas gas_remaining wei
                        args idx, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = idx
                    mem[mem[64] + 64] = sub_70907ef0[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = sub_70907ef0[address(msg.sender)][idx].field_256
                    mem[mem[64] + 128] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18
                    emit Harvest(msg.sender, idx, sub_70907ef0[address(msg.sender)][idx].field_0, sub_70907ef0[address(msg.sender)][idx].field_256, sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18);
            sub_70907ef0[address(msg.sender)][idx].field_0 = cycle
        idx = idx + 1
        continue 
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg1:
        revert with 0, 'invalid amount'
    mem[0] = msg.sender
    mem[32] = 12
    _128 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = arg1
    _134 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_128 + 132] = 32
    mem[_128 + 164] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(currencyAddress):
        revert with 0, 'Address: call to non-contract'
    _143 = mem[_134]
    mem[_128 + 196 len ceil32(mem[_134])] = mem[_134 + 32 len ceil32(mem[_134])]
    if ceil32(_143) > _143:
        mem[_143 + _128 + 196] = 0
    call currencyAddress with:
         gas gas_remaining wei
        args mem[_128 + 200 len _143 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_128 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_128 + 228] == bool(mem[_128 + 228])
            if not mem[_128 + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if arg1 + userInfo[msg.sender] < userInfo[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[msg.sender] += arg1
    emit Deposit(msg.sender, arg1);
    stor1 = 1
}

function invest(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if arg1 >= tranches.length:
        revert with 0, 'invalid tranche id'
    if stor6:
        revert with 0, 'already active'
    idx = 0
    while idx < tranches.length:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 13)
        if sub_70907ef0[address(msg.sender)][idx].field_0 < cycle:
            if sub_70907ef0[address(msg.sender)][idx].field_256:
                _353 = mem[64]
                mem[64] = mem[64] + 256
                mem[_353] = 0
                mem[_353 + 32] = 0
                mem[_353 + 64] = 0
                mem[_353 + 96] = 0
                mem[_353 + 128] = 0
                mem[_353 + 160] = 0
                mem[_353 + 192] = 0
                mem[_353 + 224] = 0
                mem[0] = idx
                mem[32] = sha3(sub_70907ef0[address(msg.sender)][idx].field_0, 14)
                _358 = mem[64]
                mem[64] = mem[64] + 256
                mem[_358] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_0
                mem[_358 + 32] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_256
                mem[_358 + 64] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_512
                mem[_358 + 96] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768
                mem[_358 + 128] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1024
                mem[_358 + 160] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1280
                mem[_358 + 192] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1536
                mem[_358 + 224] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1792
                if not sub_70907ef0[address(msg.sender)][idx].field_256:
                    if userInfo[address(msg.sender)] < userInfo[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_70907ef0[address(msg.sender)][idx].field_256 = 0
                    require ext_code.size(stakerAddress)
                    call stakerAddress.0x15c2fdc9 with:
                         gas gas_remaining wei
                        args idx, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = idx
                    mem[mem[64] + 64] = sub_70907ef0[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = sub_70907ef0[address(msg.sender)][idx].field_256
                    mem[mem[64] + 128] = 0
                    emit Harvest(msg.sender, idx, sub_70907ef0[address(msg.sender)][idx].field_0, sub_70907ef0[address(msg.sender)][idx].field_256, 0);
                else:
                    if sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / sub_70907ef0[address(msg.sender)][idx].field_256 != sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18) + userInfo[address(msg.sender)] < userInfo[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)] += sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18
                    sub_70907ef0[address(msg.sender)][idx].field_256 = 0
                    require ext_code.size(stakerAddress)
                    call stakerAddress.0x15c2fdc9 with:
                         gas gas_remaining wei
                        args idx, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = idx
                    mem[mem[64] + 64] = sub_70907ef0[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = sub_70907ef0[address(msg.sender)][idx].field_256
                    mem[mem[64] + 128] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18
                    emit Harvest(msg.sender, idx, sub_70907ef0[address(msg.sender)][idx].field_0, sub_70907ef0[address(msg.sender)][idx].field_256, sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18);
            sub_70907ef0[address(msg.sender)][idx].field_0 = cycle
        idx = idx + 1
        continue 
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0, 'invalid amount'
    if arg2 > userInfo[msg.sender]:
        revert with 0, 'balance not enough'
    require arg1 < tranches.length
    if arg2 + tranches[arg1].field_256 < tranches[arg1].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if tranches[arg1].field_0 < arg2 + tranches[arg1].field_256:
        revert with 0, 'not enough quota'
    mem[0] = arg1
    mem[32] = sha3(msg.sender, 13)
    if arg2 + sub_70907ef0[msg.sender][arg1].field_256 < sub_70907ef0[msg.sender][arg1].field_256:
        revert with 0, 'SafeMath: addition overflow'
    sub_70907ef0[msg.sender][arg1].field_256 += arg2
    if arg2 > userInfo[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    userInfo[msg.sender] -= arg2
    if arg2 + tranches[arg1].field_256 < tranches[arg1].field_256:
        revert with 0, 'SafeMath: addition overflow'
    tranches[arg1].field_256 += arg2
    require ext_code.size(stakerAddress)
    call stakerAddress.0x15c2fdc9 with:
         gas gas_remaining wei
        args arg1, msg.sender, sub_70907ef0[msg.sender][arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 64] = cycle
    mem[mem[64] + 96] = arg2
    emit Invest(msg.sender, arg1, cycle, arg2);
    if not arg3:
        idx = 0
        while idx < tranches.length:
            _693 = mem[64]
            mem[64] = mem[64] + 128
            mem[_693] = 0
            mem[_693 + 32] = 0
            mem[_693 + 64] = 0
            mem[_693 + 96] = 0
            mem[0] = 7
            _698 = mem[64]
            mem[64] = mem[64] + 128
            mem[_698] = tranches[idx].field_0
            mem[_698 + 32] = tranches[idx].field_256
            mem[_698 + 64] = tranches[idx].field_512
            mem[_698 + 96] = tranches[idx].field_768
            if tranches[idx].field_256 >= tranches[idx].field_0:
                idx = idx + 1
                continue 
            stor1 = 1
        if stor6:
            revert with 0, 'already active'
        idx = 0
        s = 0
        while idx < tranches.length:
            _987 = mem[64]
            mem[64] = mem[64] + 128
            mem[_987] = 0
            mem[_987 + 32] = 0
            mem[_987 + 64] = 0
            mem[_987 + 96] = 0
            mem[0] = 7
            _1008 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1008] = tranches[idx].field_0
            mem[_1008 + 32] = tranches[idx].field_256
            mem[_1008 + 64] = tranches[idx].field_512
            mem[_1008 + 96] = tranches[idx].field_768
            _1009 = tranches[idx].field_256
            if tranches[idx].field_256 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = tranches[idx].field_256 + s
            continue 
        require ext_code.size(address(strategyAddress))
        call address(strategyAddress).0xb6b55f25 with:
             gas gas_remaining wei
            args (_1009 * tranches.length)
    else:
        if not userInfo[msg.sender]:
            idx = 0
            while idx < tranches.length:
                _694 = mem[64]
                mem[64] = mem[64] + 128
                mem[_694] = 0
                mem[_694 + 32] = 0
                mem[_694 + 64] = 0
                mem[_694 + 96] = 0
                mem[0] = 7
                _702 = mem[64]
                mem[64] = mem[64] + 128
                mem[_702] = tranches[idx].field_0
                mem[_702 + 32] = tranches[idx].field_256
                mem[_702 + 64] = tranches[idx].field_512
                mem[_702 + 96] = tranches[idx].field_768
                if tranches[idx].field_256 >= tranches[idx].field_0:
                    idx = idx + 1
                    continue 
                stor1 = 1
            if stor6:
                revert with 0, 'already active'
            idx = 0
            s = 0
            while idx < tranches.length:
                _988 = mem[64]
                mem[64] = mem[64] + 128
                mem[_988] = 0
                mem[_988 + 32] = 0
                mem[_988 + 64] = 0
                mem[_988 + 96] = 0
                mem[0] = 7
                _1011 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1011] = tranches[idx].field_0
                mem[_1011 + 32] = tranches[idx].field_256
                mem[_1011 + 64] = tranches[idx].field_512
                mem[_1011 + 96] = tranches[idx].field_768
                _1012 = tranches[idx].field_256
                if tranches[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = tranches[idx].field_256 + s
                continue 
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).0xb6b55f25 with:
                 gas gas_remaining wei
                args (_1012 * tranches.length)
        else:
            _393 = mem[64]
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = msg.sender
            mem[mem[64] + 100] = userInfo[msg.sender]
            _395 = mem[64]
            mem[mem[64]] = 100
            mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
            mem[64] = mem[64] + 196
            mem[_393 + 132] = 32
            mem[_393 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(currencyAddress):
                revert with 0, 'Address: call to non-contract'
            _428 = mem[_395]
            mem[_393 + 196 len ceil32(mem[_395])] = mem[_395 + 32 len ceil32(mem[_395])]
            if ceil32(_428) <= _428:
                call currencyAddress with:
                     gas gas_remaining wei
                    args mem[_393 + 200 len _428 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not mem[96]:
                        emit Withdraw(msg.sender, userInfo[msg.sender]);
                        userInfo[msg.sender] = 0
                        idx = 0
                        while idx < tranches.length:
                            _989 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_989] = 0
                            mem[_989 + 32] = 0
                            mem[_989 + 64] = 0
                            mem[_989 + 96] = 0
                            mem[0] = 7
                            _1016 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1016] = tranches[idx].field_0
                            mem[_1016 + 32] = tranches[idx].field_256
                            mem[_1016 + 64] = tranches[idx].field_512
                            mem[_1016 + 96] = tranches[idx].field_768
                            if tranches[idx].field_256 >= tranches[idx].field_0:
                                idx = idx + 1
                                continue 
                            stor1 = 1
                        if stor6:
                            revert with 0, 'already active'
                        idx = 0
                        s = 0
                        while idx < tranches.length:
                            _1211 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1211] = 0
                            mem[_1211 + 32] = 0
                            mem[_1211 + 64] = 0
                            mem[_1211 + 96] = 0
                            mem[0] = 7
                            _1230 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1230] = tranches[idx].field_0
                            mem[_1230 + 32] = tranches[idx].field_256
                            mem[_1230 + 64] = tranches[idx].field_512
                            mem[_1230 + 96] = tranches[idx].field_768
                            _1231 = tranches[idx].field_256
                            if tranches[idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = tranches[idx].field_256 + s
                            continue 
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0xb6b55f25 with:
                             gas gas_remaining wei
                            args (_1231 * tranches.length)
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit Withdraw(msg.sender, userInfo[msg.sender]);
                        userInfo[msg.sender] = 0
                        idx = 0
                        while idx < tranches.length:
                            _990 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_990] = 0
                            mem[_990 + 32] = 0
                            mem[_990 + 64] = 0
                            mem[_990 + 96] = 0
                            mem[0] = 7
                            _1020 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1020] = tranches[idx].field_0
                            mem[_1020 + 32] = tranches[idx].field_256
                            mem[_1020 + 64] = tranches[idx].field_512
                            mem[_1020 + 96] = tranches[idx].field_768
                            if tranches[idx].field_256 >= tranches[idx].field_0:
                                idx = idx + 1
                                continue 
                            stor1 = 1
                        if stor6:
                            revert with 0, 'already active'
                        idx = 0
                        s = 0
                        while idx < tranches.length:
                            _1212 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1212] = 0
                            mem[_1212 + 32] = 0
                            mem[_1212 + 64] = 0
                            mem[_1212 + 96] = 0
                            mem[0] = 7
                            _1233 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1233] = tranches[idx].field_0
                            mem[_1233 + 32] = tranches[idx].field_256
                            mem[_1233 + 64] = tranches[idx].field_512
                            mem[_1233 + 96] = tranches[idx].field_768
                            _1234 = tranches[idx].field_256
                            if tranches[idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = tranches[idx].field_256 + s
                            continue 
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0xb6b55f25 with:
                             gas gas_remaining wei
                            args (_1234 * tranches.length)
                else:
                    mem[64] = _393 + ceil32(return_data.size) + 197
                    mem[_393 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        emit Withdraw(msg.sender, userInfo[msg.sender]);
                        userInfo[msg.sender] = 0
                        idx = 0
                        while idx < tranches.length:
                            _991 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_991] = 0
                            mem[_991 + 32] = 0
                            mem[_991 + 64] = 0
                            mem[_991 + 96] = 0
                            mem[0] = 7
                            _1026 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1026] = tranches[idx].field_0
                            mem[_1026 + 32] = tranches[idx].field_256
                            mem[_1026 + 64] = tranches[idx].field_512
                            mem[_1026 + 96] = tranches[idx].field_768
                            if tranches[idx].field_256 >= tranches[idx].field_0:
                                idx = idx + 1
                                continue 
                            stor1 = 1
                        if stor6:
                            revert with 0, 'already active'
                        idx = 0
                        s = 0
                        while idx < tranches.length:
                            _1213 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1213] = 0
                            mem[_1213 + 32] = 0
                            mem[_1213 + 64] = 0
                            mem[_1213 + 96] = 0
                            mem[0] = 7
                            _1236 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1236] = tranches[idx].field_0
                            mem[_1236 + 32] = tranches[idx].field_256
                            mem[_1236 + 64] = tranches[idx].field_512
                            mem[_1236 + 96] = tranches[idx].field_768
                            _1237 = tranches[idx].field_256
                            if tranches[idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = tranches[idx].field_256 + s
                            continue 
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0xb6b55f25 with:
                             gas gas_remaining wei
                            args (_1237 * tranches.length)
                    else:
                        require return_data.size >= 32
                        require mem[_393 + 228] == bool(mem[_393 + 228])
                        if not mem[_393 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit Withdraw(msg.sender, userInfo[msg.sender]);
                        userInfo[msg.sender] = 0
                        idx = 0
                        while idx < tranches.length:
                            _992 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_992] = 0
                            mem[_992 + 32] = 0
                            mem[_992 + 64] = 0
                            mem[_992 + 96] = 0
                            mem[0] = 7
                            _1030 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1030] = tranches[idx].field_0
                            mem[_1030 + 32] = tranches[idx].field_256
                            mem[_1030 + 64] = tranches[idx].field_512
                            mem[_1030 + 96] = tranches[idx].field_768
                            if tranches[idx].field_256 >= tranches[idx].field_0:
                                idx = idx + 1
                                continue 
                            stor1 = 1
                        if stor6:
                            revert with 0, 'already active'
                        idx = 0
                        s = 0
                        while idx < tranches.length:
                            _1214 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1214] = 0
                            mem[_1214 + 32] = 0
                            mem[_1214 + 64] = 0
                            mem[_1214 + 96] = 0
                            mem[0] = 7
                            _1239 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1239] = tranches[idx].field_0
                            mem[_1239 + 32] = tranches[idx].field_256
                            mem[_1239 + 64] = tranches[idx].field_512
                            mem[_1239 + 96] = tranches[idx].field_768
                            _1240 = tranches[idx].field_256
                            if tranches[idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = tranches[idx].field_256 + s
                            continue 
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0xb6b55f25 with:
                             gas gas_remaining wei
                            args (_1240 * tranches.length)
            else:
                mem[_428 + _393 + 196] = 0
                call currencyAddress with:
                     gas gas_remaining wei
                    args mem[_393 + 200 len _428 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not mem[96]:
                        emit Withdraw(msg.sender, userInfo[msg.sender]);
                        userInfo[msg.sender] = 0
                        idx = 0
                        while idx < tranches.length:
                            _993 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_993] = 0
                            mem[_993 + 32] = 0
                            mem[_993 + 64] = 0
                            mem[_993 + 96] = 0
                            mem[0] = 7
                            _1036 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1036] = tranches[idx].field_0
                            mem[_1036 + 32] = tranches[idx].field_256
                            mem[_1036 + 64] = tranches[idx].field_512
                            mem[_1036 + 96] = tranches[idx].field_768
                            if tranches[idx].field_256 >= tranches[idx].field_0:
                                idx = idx + 1
                                continue 
                            stor1 = 1
                        if stor6:
                            revert with 0, 'already active'
                        idx = 0
                        s = 0
                        while idx < tranches.length:
                            _1215 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1215] = 0
                            mem[_1215 + 32] = 0
                            mem[_1215 + 64] = 0
                            mem[_1215 + 96] = 0
                            mem[0] = 7
                            _1242 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1242] = tranches[idx].field_0
                            mem[_1242 + 32] = tranches[idx].field_256
                            mem[_1242 + 64] = tranches[idx].field_512
                            mem[_1242 + 96] = tranches[idx].field_768
                            _1243 = tranches[idx].field_256
                            if tranches[idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = tranches[idx].field_256 + s
                            continue 
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0xb6b55f25 with:
                             gas gas_remaining wei
                            args (_1243 * tranches.length)
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit Withdraw(msg.sender, userInfo[msg.sender]);
                        userInfo[msg.sender] = 0
                        idx = 0
                        while idx < tranches.length:
                            _994 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_994] = 0
                            mem[_994 + 32] = 0
                            mem[_994 + 64] = 0
                            mem[_994 + 96] = 0
                            mem[0] = 7
                            _1040 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1040] = tranches[idx].field_0
                            mem[_1040 + 32] = tranches[idx].field_256
                            mem[_1040 + 64] = tranches[idx].field_512
                            mem[_1040 + 96] = tranches[idx].field_768
                            if tranches[idx].field_256 >= tranches[idx].field_0:
                                idx = idx + 1
                                continue 
                            stor1 = 1
                        if stor6:
                            revert with 0, 'already active'
                        idx = 0
                        s = 0
                        while idx < tranches.length:
                            _1216 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1216] = 0
                            mem[_1216 + 32] = 0
                            mem[_1216 + 64] = 0
                            mem[_1216 + 96] = 0
                            mem[0] = 7
                            _1245 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1245] = tranches[idx].field_0
                            mem[_1245 + 32] = tranches[idx].field_256
                            mem[_1245 + 64] = tranches[idx].field_512
                            mem[_1245 + 96] = tranches[idx].field_768
                            _1246 = tranches[idx].field_256
                            if tranches[idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = tranches[idx].field_256 + s
                            continue 
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0xb6b55f25 with:
                             gas gas_remaining wei
                            args (_1246 * tranches.length)
                else:
                    mem[64] = _393 + ceil32(return_data.size) + 197
                    mem[_393 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        emit Withdraw(msg.sender, userInfo[msg.sender]);
                        userInfo[msg.sender] = 0
                        idx = 0
                        while idx < tranches.length:
                            _995 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_995] = 0
                            mem[_995 + 32] = 0
                            mem[_995 + 64] = 0
                            mem[_995 + 96] = 0
                            mem[0] = 7
                            _1046 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1046] = tranches[idx].field_0
                            mem[_1046 + 32] = tranches[idx].field_256
                            mem[_1046 + 64] = tranches[idx].field_512
                            mem[_1046 + 96] = tranches[idx].field_768
                            if tranches[idx].field_256 >= tranches[idx].field_0:
                                idx = idx + 1
                                continue 
                            stor1 = 1
                        if stor6:
                            revert with 0, 'already active'
                        idx = 0
                        s = 0
                        while idx < tranches.length:
                            _1217 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1217] = 0
                            mem[_1217 + 32] = 0
                            mem[_1217 + 64] = 0
                            mem[_1217 + 96] = 0
                            mem[0] = 7
                            _1248 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1248] = tranches[idx].field_0
                            mem[_1248 + 32] = tranches[idx].field_256
                            mem[_1248 + 64] = tranches[idx].field_512
                            mem[_1248 + 96] = tranches[idx].field_768
                            _1249 = tranches[idx].field_256
                            if tranches[idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = tranches[idx].field_256 + s
                            continue 
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0xb6b55f25 with:
                             gas gas_remaining wei
                            args (_1249 * tranches.length)
                    else:
                        require return_data.size >= 32
                        require mem[_393 + 228] == bool(mem[_393 + 228])
                        if not mem[_393 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit Withdraw(msg.sender, userInfo[msg.sender]);
                        userInfo[msg.sender] = 0
                        idx = 0
                        while idx < tranches.length:
                            _996 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_996] = 0
                            mem[_996 + 32] = 0
                            mem[_996 + 64] = 0
                            mem[_996 + 96] = 0
                            mem[0] = 7
                            _1050 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1050] = tranches[idx].field_0
                            mem[_1050 + 32] = tranches[idx].field_256
                            mem[_1050 + 64] = tranches[idx].field_512
                            mem[_1050 + 96] = tranches[idx].field_768
                            if tranches[idx].field_256 >= tranches[idx].field_0:
                                idx = idx + 1
                                continue 
                            stor1 = 1
                        if stor6:
                            revert with 0, 'already active'
                        idx = 0
                        s = 0
                        while idx < tranches.length:
                            _1218 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1218] = 0
                            mem[_1218 + 32] = 0
                            mem[_1218 + 64] = 0
                            mem[_1218 + 96] = 0
                            mem[0] = 7
                            _1251 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1251] = tranches[idx].field_0
                            mem[_1251 + 32] = tranches[idx].field_256
                            mem[_1251 + 64] = tranches[idx].field_512
                            mem[_1251 + 96] = tranches[idx].field_768
                            _1252 = tranches[idx].field_256
                            if tranches[idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = tranches[idx].field_256 + s
                            continue 
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0xb6b55f25 with:
                             gas gas_remaining wei
                            args (_1252 * tranches.length)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_27e79c44 = block.timestamp
    stor6 = 1
    idx = 0
    while idx < tranches.length:
        mem[0] = 7
        mem[mem[64]] = idx
        mem[mem[64] + 32] = cycle
        mem[mem[64] + 64] = tranches[idx].field_256
        emit 0xe9792504: idx, cycle, tranches[idx].field_256
        idx = idx + 1
        continue 
    if (duration / 3) + block.number < block.number:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(stakerAddress)
    call stakerAddress.0x95805dad with:
         gas gas_remaining wei
        args ((duration / 3) + block.number)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function sub_2ebbec1e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if arg2 >= tranches.length:
        revert with 0, 'invalid tranche id'
    if stor6:
        revert with 0, 'already active'
    idx = 0
    while idx < tranches.length:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 13)
        if sub_70907ef0[address(msg.sender)][idx].field_0 < cycle:
            if sub_70907ef0[address(msg.sender)][idx].field_256:
                _472 = mem[64]
                mem[64] = mem[64] + 256
                mem[_472] = 0
                mem[_472 + 32] = 0
                mem[_472 + 64] = 0
                mem[_472 + 96] = 0
                mem[_472 + 128] = 0
                mem[_472 + 160] = 0
                mem[_472 + 192] = 0
                mem[_472 + 224] = 0
                mem[0] = idx
                mem[32] = sha3(sub_70907ef0[address(msg.sender)][idx].field_0, 14)
                _478 = mem[64]
                mem[64] = mem[64] + 256
                mem[_478] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_0
                mem[_478 + 32] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_256
                mem[_478 + 64] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_512
                mem[_478 + 96] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768
                mem[_478 + 128] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1024
                mem[_478 + 160] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1280
                mem[_478 + 192] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1536
                mem[_478 + 224] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_1792
                if not sub_70907ef0[address(msg.sender)][idx].field_256:
                    if userInfo[address(msg.sender)] < userInfo[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_70907ef0[address(msg.sender)][idx].field_256 = 0
                    require ext_code.size(stakerAddress)
                    call stakerAddress.0x15c2fdc9 with:
                         gas gas_remaining wei
                        args idx, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = idx
                    mem[mem[64] + 64] = sub_70907ef0[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = sub_70907ef0[address(msg.sender)][idx].field_256
                    mem[mem[64] + 128] = 0
                    emit Harvest(msg.sender, idx, sub_70907ef0[address(msg.sender)][idx].field_0, sub_70907ef0[address(msg.sender)][idx].field_256, 0);
                else:
                    if sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / sub_70907ef0[address(msg.sender)][idx].field_256 != sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18) + userInfo[address(msg.sender)] < userInfo[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)] += sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18
                    sub_70907ef0[address(msg.sender)][idx].field_256 = 0
                    require ext_code.size(stakerAddress)
                    call stakerAddress.0x15c2fdc9 with:
                         gas gas_remaining wei
                        args idx, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = idx
                    mem[mem[64] + 64] = sub_70907ef0[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = sub_70907ef0[address(msg.sender)][idx].field_256
                    mem[mem[64] + 128] = sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18
                    emit Harvest(msg.sender, idx, sub_70907ef0[address(msg.sender)][idx].field_0, sub_70907ef0[address(msg.sender)][idx].field_256, sub_ae4f9c74[stor13[address(msg.sender)][idx].field_0][idx].field_768 * sub_70907ef0[address(msg.sender)][idx].field_256 / 10^18);
            sub_70907ef0[address(msg.sender)][idx].field_0 = cycle
        idx = idx + 1
        continue 
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg1:
        revert with 0, 'invalid amountIn'
    if arg3 <= 0:
        revert with 0, 'invalid amountInvest'
    mem[0] = msg.sender
    mem[32] = 12
    if arg1 + userInfo[msg.sender] < userInfo[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + userInfo[msg.sender] < arg3:
        revert with 0, 'balance not enough'
    _485 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = arg1
    _488 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_485 + 132] = 32
    mem[_485 + 164] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(currencyAddress):
        revert with 0, 'Address: call to non-contract'
    _502 = mem[_488]
    mem[_485 + 196 len ceil32(mem[_488])] = mem[_488 + 32 len ceil32(mem[_488])]
    if ceil32(_502) <= _502:
        call currencyAddress with:
             gas gas_remaining wei
            args mem[_485 + 200 len _502 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if arg1 + userInfo[msg.sender] < userInfo[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender] += arg1
                emit Deposit(msg.sender, arg1);
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'balance not enough'
                require arg2 < tranches.length
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if tranches[arg2].field_0 < arg3 + tranches[arg2].field_256:
                    revert with 0, 'not enough quota'
                if arg3 + sub_70907ef0[msg.sender][arg2].field_256 < sub_70907ef0[msg.sender][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                sub_70907ef0[msg.sender][arg2].field_256 += arg3
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender] -= arg3
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                tranches[arg2].field_256 += arg3
                require ext_code.size(stakerAddress)
                call stakerAddress.0x15c2fdc9 with:
                     gas gas_remaining wei
                    args arg2, msg.sender, sub_70907ef0[msg.sender][arg2].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Invest(msg.sender, arg2, cycle, arg3);
                idx = 0
                while idx < tranches.length:
                    _1355 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1355] = 0
                    mem[_1355 + 32] = 0
                    mem[_1355 + 64] = 0
                    mem[_1355 + 96] = 0
                    mem[0] = 7
                    _1374 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1374] = tranches[idx].field_0
                    mem[_1374 + 32] = tranches[idx].field_256
                    mem[_1374 + 64] = tranches[idx].field_512
                    mem[_1374 + 96] = tranches[idx].field_768
                    if tranches[idx].field_256 >= tranches[idx].field_0:
                        idx = idx + 1
                        continue 
                    stor1 = 1
                if stor6:
                    revert with 0, 'already active'
                idx = 0
                s = 0
                while idx < tranches.length:
                    _1547 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1547] = 0
                    mem[_1547 + 32] = 0
                    mem[_1547 + 64] = 0
                    mem[_1547 + 96] = 0
                    mem[0] = 7
                    _1564 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1564] = tranches[idx].field_0
                    mem[_1564 + 32] = tranches[idx].field_256
                    mem[_1564 + 64] = tranches[idx].field_512
                    mem[_1564 + 96] = tranches[idx].field_768
                    _1565 = tranches[idx].field_256
                    if tranches[idx].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = tranches[idx].field_256 + s
                    continue 
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0xb6b55f25 with:
                     gas gas_remaining wei
                    args (_1565 * tranches.length)
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if arg1 + userInfo[msg.sender] < userInfo[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender] += arg1
                emit Deposit(msg.sender, arg1);
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'balance not enough'
                require arg2 < tranches.length
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if tranches[arg2].field_0 < arg3 + tranches[arg2].field_256:
                    revert with 0, 'not enough quota'
                if arg3 + sub_70907ef0[msg.sender][arg2].field_256 < sub_70907ef0[msg.sender][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                sub_70907ef0[msg.sender][arg2].field_256 += arg3
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender] -= arg3
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                tranches[arg2].field_256 += arg3
                require ext_code.size(stakerAddress)
                call stakerAddress.0x15c2fdc9 with:
                     gas gas_remaining wei
                    args arg2, msg.sender, sub_70907ef0[msg.sender][arg2].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Invest(msg.sender, arg2, cycle, arg3);
                idx = 0
                while idx < tranches.length:
                    _1356 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1356] = 0
                    mem[_1356 + 32] = 0
                    mem[_1356 + 64] = 0
                    mem[_1356 + 96] = 0
                    mem[0] = 7
                    _1378 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1378] = tranches[idx].field_0
                    mem[_1378 + 32] = tranches[idx].field_256
                    mem[_1378 + 64] = tranches[idx].field_512
                    mem[_1378 + 96] = tranches[idx].field_768
                    if tranches[idx].field_256 >= tranches[idx].field_0:
                        idx = idx + 1
                        continue 
                    stor1 = 1
                if stor6:
                    revert with 0, 'already active'
                idx = 0
                s = 0
                while idx < tranches.length:
                    _1548 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1548] = 0
                    mem[_1548 + 32] = 0
                    mem[_1548 + 64] = 0
                    mem[_1548 + 96] = 0
                    mem[0] = 7
                    _1567 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1567] = tranches[idx].field_0
                    mem[_1567 + 32] = tranches[idx].field_256
                    mem[_1567 + 64] = tranches[idx].field_512
                    mem[_1567 + 96] = tranches[idx].field_768
                    _1568 = tranches[idx].field_256
                    if tranches[idx].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = tranches[idx].field_256 + s
                    continue 
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0xb6b55f25 with:
                     gas gas_remaining wei
                    args (_1568 * tranches.length)
        else:
            mem[64] = _485 + ceil32(return_data.size) + 197
            mem[_485 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if arg1 + userInfo[msg.sender] < userInfo[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender] += arg1
                emit Deposit(msg.sender, arg1);
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'balance not enough'
                require arg2 < tranches.length
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if tranches[arg2].field_0 < arg3 + tranches[arg2].field_256:
                    revert with 0, 'not enough quota'
                if arg3 + sub_70907ef0[msg.sender][arg2].field_256 < sub_70907ef0[msg.sender][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                sub_70907ef0[msg.sender][arg2].field_256 += arg3
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender] -= arg3
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                tranches[arg2].field_256 += arg3
                require ext_code.size(stakerAddress)
                call stakerAddress.0x15c2fdc9 with:
                     gas gas_remaining wei
                    args arg2, msg.sender, sub_70907ef0[msg.sender][arg2].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Invest(msg.sender, arg2, cycle, arg3);
                idx = 0
                while idx < tranches.length:
                    _1357 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1357] = 0
                    mem[_1357 + 32] = 0
                    mem[_1357 + 64] = 0
                    mem[_1357 + 96] = 0
                    mem[0] = 7
                    _1384 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1384] = tranches[idx].field_0
                    mem[_1384 + 32] = tranches[idx].field_256
                    mem[_1384 + 64] = tranches[idx].field_512
                    mem[_1384 + 96] = tranches[idx].field_768
                    if tranches[idx].field_256 >= tranches[idx].field_0:
                        idx = idx + 1
                        continue 
                    stor1 = 1
                if stor6:
                    revert with 0, 'already active'
                idx = 0
                s = 0
                while idx < tranches.length:
                    _1549 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1549] = 0
                    mem[_1549 + 32] = 0
                    mem[_1549 + 64] = 0
                    mem[_1549 + 96] = 0
                    mem[0] = 7
                    _1570 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1570] = tranches[idx].field_0
                    mem[_1570 + 32] = tranches[idx].field_256
                    mem[_1570 + 64] = tranches[idx].field_512
                    mem[_1570 + 96] = tranches[idx].field_768
                    _1571 = tranches[idx].field_256
                    if tranches[idx].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = tranches[idx].field_256 + s
                    continue 
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0xb6b55f25 with:
                     gas gas_remaining wei
                    args (_1571 * tranches.length)
            else:
                require return_data.size >= 32
                require mem[_485 + 228] == bool(mem[_485 + 228])
                if not mem[_485 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if arg1 + userInfo[msg.sender] < userInfo[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender] += arg1
                emit Deposit(msg.sender, arg1);
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'balance not enough'
                require arg2 < tranches.length
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if tranches[arg2].field_0 < arg3 + tranches[arg2].field_256:
                    revert with 0, 'not enough quota'
                if arg3 + sub_70907ef0[msg.sender][arg2].field_256 < sub_70907ef0[msg.sender][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                sub_70907ef0[msg.sender][arg2].field_256 += arg3
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender] -= arg3
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                tranches[arg2].field_256 += arg3
                require ext_code.size(stakerAddress)
                call stakerAddress.0x15c2fdc9 with:
                     gas gas_remaining wei
                    args arg2, msg.sender, sub_70907ef0[msg.sender][arg2].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Invest(msg.sender, arg2, cycle, arg3);
                idx = 0
                while idx < tranches.length:
                    _1358 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1358] = 0
                    mem[_1358 + 32] = 0
                    mem[_1358 + 64] = 0
                    mem[_1358 + 96] = 0
                    mem[0] = 7
                    _1388 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1388] = tranches[idx].field_0
                    mem[_1388 + 32] = tranches[idx].field_256
                    mem[_1388 + 64] = tranches[idx].field_512
                    mem[_1388 + 96] = tranches[idx].field_768
                    if tranches[idx].field_256 >= tranches[idx].field_0:
                        idx = idx + 1
                        continue 
                    stor1 = 1
                if stor6:
                    revert with 0, 'already active'
                idx = 0
                s = 0
                while idx < tranches.length:
                    _1550 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1550] = 0
                    mem[_1550 + 32] = 0
                    mem[_1550 + 64] = 0
                    mem[_1550 + 96] = 0
                    mem[0] = 7
                    _1573 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1573] = tranches[idx].field_0
                    mem[_1573 + 32] = tranches[idx].field_256
                    mem[_1573 + 64] = tranches[idx].field_512
                    mem[_1573 + 96] = tranches[idx].field_768
                    _1574 = tranches[idx].field_256
                    if tranches[idx].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = tranches[idx].field_256 + s
                    continue 
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0xb6b55f25 with:
                     gas gas_remaining wei
                    args (_1574 * tranches.length)
    else:
        mem[_502 + _485 + 196] = 0
        call currencyAddress with:
             gas gas_remaining wei
            args mem[_485 + 200 len _502 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                if arg1 + userInfo[msg.sender] < userInfo[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender] += arg1
                emit Deposit(msg.sender, arg1);
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'balance not enough'
                require arg2 < tranches.length
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if tranches[arg2].field_0 < arg3 + tranches[arg2].field_256:
                    revert with 0, 'not enough quota'
                if arg3 + sub_70907ef0[msg.sender][arg2].field_256 < sub_70907ef0[msg.sender][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                sub_70907ef0[msg.sender][arg2].field_256 += arg3
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender] -= arg3
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                tranches[arg2].field_256 += arg3
                require ext_code.size(stakerAddress)
                call stakerAddress.0x15c2fdc9 with:
                     gas gas_remaining wei
                    args arg2, msg.sender, sub_70907ef0[msg.sender][arg2].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Invest(msg.sender, arg2, cycle, arg3);
                idx = 0
                while idx < tranches.length:
                    _1359 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1359] = 0
                    mem[_1359 + 32] = 0
                    mem[_1359 + 64] = 0
                    mem[_1359 + 96] = 0
                    mem[0] = 7
                    _1394 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1394] = tranches[idx].field_0
                    mem[_1394 + 32] = tranches[idx].field_256
                    mem[_1394 + 64] = tranches[idx].field_512
                    mem[_1394 + 96] = tranches[idx].field_768
                    if tranches[idx].field_256 >= tranches[idx].field_0:
                        idx = idx + 1
                        continue 
                    stor1 = 1
                if stor6:
                    revert with 0, 'already active'
                idx = 0
                s = 0
                while idx < tranches.length:
                    _1551 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1551] = 0
                    mem[_1551 + 32] = 0
                    mem[_1551 + 64] = 0
                    mem[_1551 + 96] = 0
                    mem[0] = 7
                    _1576 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1576] = tranches[idx].field_0
                    mem[_1576 + 32] = tranches[idx].field_256
                    mem[_1576 + 64] = tranches[idx].field_512
                    mem[_1576 + 96] = tranches[idx].field_768
                    _1577 = tranches[idx].field_256
                    if tranches[idx].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = tranches[idx].field_256 + s
                    continue 
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0xb6b55f25 with:
                     gas gas_remaining wei
                    args (_1577 * tranches.length)
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if arg1 + userInfo[msg.sender] < userInfo[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender] += arg1
                emit Deposit(msg.sender, arg1);
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'balance not enough'
                require arg2 < tranches.length
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if tranches[arg2].field_0 < arg3 + tranches[arg2].field_256:
                    revert with 0, 'not enough quota'
                if arg3 + sub_70907ef0[msg.sender][arg2].field_256 < sub_70907ef0[msg.sender][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                sub_70907ef0[msg.sender][arg2].field_256 += arg3
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender] -= arg3
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                tranches[arg2].field_256 += arg3
                require ext_code.size(stakerAddress)
                call stakerAddress.0x15c2fdc9 with:
                     gas gas_remaining wei
                    args arg2, msg.sender, sub_70907ef0[msg.sender][arg2].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Invest(msg.sender, arg2, cycle, arg3);
                idx = 0
                while idx < tranches.length:
                    _1360 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1360] = 0
                    mem[_1360 + 32] = 0
                    mem[_1360 + 64] = 0
                    mem[_1360 + 96] = 0
                    mem[0] = 7
                    _1398 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1398] = tranches[idx].field_0
                    mem[_1398 + 32] = tranches[idx].field_256
                    mem[_1398 + 64] = tranches[idx].field_512
                    mem[_1398 + 96] = tranches[idx].field_768
                    if tranches[idx].field_256 >= tranches[idx].field_0:
                        idx = idx + 1
                        continue 
                    stor1 = 1
                if stor6:
                    revert with 0, 'already active'
                idx = 0
                s = 0
                while idx < tranches.length:
                    _1552 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1552] = 0
                    mem[_1552 + 32] = 0
                    mem[_1552 + 64] = 0
                    mem[_1552 + 96] = 0
                    mem[0] = 7
                    _1579 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1579] = tranches[idx].field_0
                    mem[_1579 + 32] = tranches[idx].field_256
                    mem[_1579 + 64] = tranches[idx].field_512
                    mem[_1579 + 96] = tranches[idx].field_768
                    _1580 = tranches[idx].field_256
                    if tranches[idx].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = tranches[idx].field_256 + s
                    continue 
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0xb6b55f25 with:
                     gas gas_remaining wei
                    args (_1580 * tranches.length)
        else:
            mem[64] = _485 + ceil32(return_data.size) + 197
            mem[_485 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if arg1 + userInfo[msg.sender] < userInfo[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender] += arg1
                emit Deposit(msg.sender, arg1);
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'balance not enough'
                require arg2 < tranches.length
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if tranches[arg2].field_0 < arg3 + tranches[arg2].field_256:
                    revert with 0, 'not enough quota'
                if arg3 + sub_70907ef0[msg.sender][arg2].field_256 < sub_70907ef0[msg.sender][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                sub_70907ef0[msg.sender][arg2].field_256 += arg3
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender] -= arg3
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                tranches[arg2].field_256 += arg3
                require ext_code.size(stakerAddress)
                call stakerAddress.0x15c2fdc9 with:
                     gas gas_remaining wei
                    args arg2, msg.sender, sub_70907ef0[msg.sender][arg2].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Invest(msg.sender, arg2, cycle, arg3);
                idx = 0
                while idx < tranches.length:
                    _1361 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1361] = 0
                    mem[_1361 + 32] = 0
                    mem[_1361 + 64] = 0
                    mem[_1361 + 96] = 0
                    mem[0] = 7
                    _1404 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1404] = tranches[idx].field_0
                    mem[_1404 + 32] = tranches[idx].field_256
                    mem[_1404 + 64] = tranches[idx].field_512
                    mem[_1404 + 96] = tranches[idx].field_768
                    if tranches[idx].field_256 >= tranches[idx].field_0:
                        idx = idx + 1
                        continue 
                    stor1 = 1
                if stor6:
                    revert with 0, 'already active'
                idx = 0
                s = 0
                while idx < tranches.length:
                    _1553 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1553] = 0
                    mem[_1553 + 32] = 0
                    mem[_1553 + 64] = 0
                    mem[_1553 + 96] = 0
                    mem[0] = 7
                    _1582 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1582] = tranches[idx].field_0
                    mem[_1582 + 32] = tranches[idx].field_256
                    mem[_1582 + 64] = tranches[idx].field_512
                    mem[_1582 + 96] = tranches[idx].field_768
                    _1583 = tranches[idx].field_256
                    if tranches[idx].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = tranches[idx].field_256 + s
                    continue 
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0xb6b55f25 with:
                     gas gas_remaining wei
                    args (_1583 * tranches.length)
            else:
                require return_data.size >= 32
                require mem[_485 + 228] == bool(mem[_485 + 228])
                if not mem[_485 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if arg1 + userInfo[msg.sender] < userInfo[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender] += arg1
                emit Deposit(msg.sender, arg1);
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'balance not enough'
                require arg2 < tranches.length
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if tranches[arg2].field_0 < arg3 + tranches[arg2].field_256:
                    revert with 0, 'not enough quota'
                if arg3 + sub_70907ef0[msg.sender][arg2].field_256 < sub_70907ef0[msg.sender][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                sub_70907ef0[msg.sender][arg2].field_256 += arg3
                if arg3 > userInfo[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender] -= arg3
                if arg3 + tranches[arg2].field_256 < tranches[arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                tranches[arg2].field_256 += arg3
                require ext_code.size(stakerAddress)
                call stakerAddress.0x15c2fdc9 with:
                     gas gas_remaining wei
                    args arg2, msg.sender, sub_70907ef0[msg.sender][arg2].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Invest(msg.sender, arg2, cycle, arg3);
                idx = 0
                while idx < tranches.length:
                    _1362 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1362] = 0
                    mem[_1362 + 32] = 0
                    mem[_1362 + 64] = 0
                    mem[_1362 + 96] = 0
                    mem[0] = 7
                    _1408 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1408] = tranches[idx].field_0
                    mem[_1408 + 32] = tranches[idx].field_256
                    mem[_1408 + 64] = tranches[idx].field_512
                    mem[_1408 + 96] = tranches[idx].field_768
                    if tranches[idx].field_256 >= tranches[idx].field_0:
                        idx = idx + 1
                        continue 
                    stor1 = 1
                if stor6:
                    revert with 0, 'already active'
                idx = 0
                s = 0
                while idx < tranches.length:
                    _1554 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1554] = 0
                    mem[_1554 + 32] = 0
                    mem[_1554 + 64] = 0
                    mem[_1554 + 96] = 0
                    mem[0] = 7
                    _1585 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1585] = tranches[idx].field_0
                    mem[_1585 + 32] = tranches[idx].field_256
                    mem[_1585 + 64] = tranches[idx].field_512
                    mem[_1585 + 96] = tranches[idx].field_768
                    _1586 = tranches[idx].field_256
                    if tranches[idx].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = tranches[idx].field_256 + s
                    continue 
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0xb6b55f25 with:
                     gas gas_remaining wei
                    args (_1586 * tranches.length)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_27e79c44 = block.timestamp
    stor6 = 1
    idx = 0
    while idx < tranches.length:
        mem[0] = 7
        mem[mem[64]] = idx
        mem[mem[64] + 32] = cycle
        mem[mem[64] + 64] = tranches[idx].field_256
        emit 0xe9792504: idx, cycle, tranches[idx].field_256
        idx = idx + 1
        continue 
    if (duration / 3) + block.number < block.number:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(stakerAddress)
    call stakerAddress.0x95805dad with:
         gas gas_remaining wei
        args ((duration / 3) + block.number)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function stop() payable {
    if not stor6:
        revert with 0, 'not active'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.timestamp < sub_27e79c44 + duration:
        revert with 0, 'cycle not expired'
    mem[100] = this.address
    require ext_code.size(currencyAddress)
    staticcall currencyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(currencyAddress)
    staticcall currencyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    idx = 0
    s = 0
    s = 0
    s = 0
    s = mem[ceil32(return_data.size) + 96] - ext_call.return_data[0]
    while idx < tranches.length - 1:
        require idx < tranches.length
        mem[0] = 7
        if not tranches[idx].field_256:
            if tranches[idx].field_256 < tranches[idx].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if s < tranches[idx].field_256:
                if s == tranches[idx].field_256:
                    _1236 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1236] = tranches[idx].field_0
                    mem[_1236 + 32] = tranches[idx].field_256
                    mem[_1236 + 64] = s
                    mem[_1236 + 96] = 10^18
                    mem[_1236 + 128] = tranches[idx].field_512
                    mem[_1236 + 160] = tranches[idx].field_768
                    mem[_1236 + 192] = sub_27e79c44
                    mem[_1236 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = s
                    sub_ae4f9c74[stor4][idx].field_768 = 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = s
                    mem[mem[64] + 128] = 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = s
                    s = 10^18
                    s = 0
                    continue 
                if s <= tranches[idx].field_256:
                    if not tranches[idx].field_256 - s:
                        if tranches[idx].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require tranches[idx].field_256
                        if 0 / tranches[idx].field_256 > 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _1499 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_1499] = tranches[idx].field_0
                        mem[_1499 + 32] = tranches[idx].field_256
                        mem[_1499 + 64] = s
                        mem[_1499 + 96] = -(0 / tranches[idx].field_256) + 10^18
                        mem[_1499 + 128] = tranches[idx].field_512
                        mem[_1499 + 160] = tranches[idx].field_768
                        mem[_1499 + 192] = sub_27e79c44
                        mem[_1499 + 224] = block.timestamp
                        mem[0] = idx
                        mem[32] = sha3(cycle, 14)
                        sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                        sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                        sub_ae4f9c74[stor4][idx].field_512 = s
                        sub_ae4f9c74[stor4][idx].field_768 = -(0 / tranches[idx].field_256) + 10^18
                        sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                        sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                        sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                        sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                        tranches[idx].field_256 = 0
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = cycle
                        mem[mem[64] + 64] = tranches[idx].field_256
                        mem[mem[64] + 96] = s
                        mem[mem[64] + 128] = -(0 / tranches[idx].field_256) + 10^18
                        emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, -(0 / tranches[idx].field_256) + 10^18
                        idx = idx + 1
                        s = tranches[idx].field_256
                        s = s
                        s = -(0 / tranches[idx].field_256) + 10^18
                        s = 0
                        continue 
                    if (10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256 - s != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if tranches[idx].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[idx].field_256
                    if (10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1558 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1558] = tranches[idx].field_0
                    mem[_1558 + 32] = tranches[idx].field_256
                    mem[_1558 + 64] = s
                    mem[_1558 + 96] = -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                    mem[_1558 + 128] = tranches[idx].field_512
                    mem[_1558 + 160] = tranches[idx].field_768
                    mem[_1558 + 192] = sub_27e79c44
                    mem[_1558 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = s
                    sub_ae4f9c74[stor4][idx].field_768 = -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = s
                    mem[mem[64] + 128] = -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = s
                    s = -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                    s = 0
                    continue 
                if not s - tranches[idx].field_256:
                    if tranches[idx].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[idx].field_256
                    if (0 / tranches[idx].field_256) + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    _1526 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1526] = tranches[idx].field_0
                    mem[_1526 + 32] = tranches[idx].field_256
                    mem[_1526 + 64] = s
                    mem[_1526 + 96] = (0 / tranches[idx].field_256) + 10^18
                    mem[_1526 + 128] = tranches[idx].field_512
                    mem[_1526 + 160] = tranches[idx].field_768
                    mem[_1526 + 192] = sub_27e79c44
                    mem[_1526 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = s
                    sub_ae4f9c74[stor4][idx].field_768 = (0 / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = s
                    mem[mem[64] + 128] = (0 / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, (0 / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = s
                    s = (0 / tranches[idx].field_256) + 10^18
                    s = 0
                    continue 
                if (10^18 * s) - (10^18 * tranches[idx].field_256) / s - tranches[idx].field_256 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                _1607 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1607] = tranches[idx].field_0
                mem[_1607 + 32] = tranches[idx].field_256
                mem[_1607 + 64] = s
                mem[_1607 + 96] = ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
                mem[_1607 + 128] = tranches[idx].field_512
                mem[_1607 + 160] = tranches[idx].field_768
                mem[_1607 + 192] = sub_27e79c44
                mem[_1607 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = s
                sub_ae4f9c74[stor4][idx].field_768 = ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = s
                mem[mem[64] + 128] = ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = s
                s = ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
                s = 0
                continue 
            if tranches[idx].field_256 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if s < tranches[idx].field_256:
                if tranches[idx].field_256 == tranches[idx].field_256:
                    _1333 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1333] = tranches[idx].field_0
                    mem[_1333 + 32] = tranches[idx].field_256
                    mem[_1333 + 64] = tranches[idx].field_256
                    mem[_1333 + 96] = 10^18
                    mem[_1333 + 128] = tranches[idx].field_512
                    mem[_1333 + 160] = tranches[idx].field_768
                    mem[_1333 + 192] = sub_27e79c44
                    mem[_1333 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_768 = 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = tranches[idx].field_256
                    mem[mem[64] + 128] = 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256, 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = tranches[idx].field_256
                    s = 10^18
                    s = s - tranches[idx].field_256
                    continue 
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if tranches[idx].field_256 <= tranches[idx].field_256:
                    if 0 / tranches[idx].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1593 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1593] = tranches[idx].field_0
                    mem[_1593 + 32] = tranches[idx].field_256
                    mem[_1593 + 64] = tranches[idx].field_256
                    mem[_1593 + 96] = -(0 / tranches[idx].field_256) + 10^18
                    mem[_1593 + 128] = tranches[idx].field_512
                    mem[_1593 + 160] = tranches[idx].field_768
                    mem[_1593 + 192] = sub_27e79c44
                    mem[_1593 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_768 = -(0 / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = tranches[idx].field_256
                    mem[mem[64] + 128] = -(0 / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256, -(0 / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = tranches[idx].field_256
                    s = -(0 / tranches[idx].field_256) + 10^18
                    s = s - tranches[idx].field_256
                    continue 
                if (0 / tranches[idx].field_256) + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                _1651 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1651] = tranches[idx].field_0
                mem[_1651 + 32] = tranches[idx].field_256
                mem[_1651 + 64] = tranches[idx].field_256
                mem[_1651 + 96] = (0 / tranches[idx].field_256) + 10^18
                mem[_1651 + 128] = tranches[idx].field_512
                mem[_1651 + 160] = tranches[idx].field_768
                mem[_1651 + 192] = sub_27e79c44
                mem[_1651 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_768 = (0 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = tranches[idx].field_256
                mem[mem[64] + 128] = (0 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256, (0 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = tranches[idx].field_256
                s = (0 / tranches[idx].field_256) + 10^18
                s = s - tranches[idx].field_256
                continue 
            if not tranches[idx].field_256:
                if sub_f8fa9cdb < sub_f8fa9cdb:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > tranches[idx].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tranches[idx].field_256 == tranches[idx].field_256:
                    _1771 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1771] = tranches[idx].field_0
                    mem[_1771 + 32] = tranches[idx].field_256
                    mem[_1771 + 64] = tranches[idx].field_256
                    mem[_1771 + 96] = 10^18
                    mem[_1771 + 128] = tranches[idx].field_512
                    mem[_1771 + 160] = tranches[idx].field_768
                    mem[_1771 + 192] = sub_27e79c44
                    mem[_1771 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_768 = 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = tranches[idx].field_256
                    mem[mem[64] + 128] = 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256, 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = tranches[idx].field_256
                    s = 10^18
                    s = s - tranches[idx].field_256
                    continue 
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if tranches[idx].field_256 <= tranches[idx].field_256:
                    if 0 / tranches[idx].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1949 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1949] = tranches[idx].field_0
                    mem[_1949 + 32] = tranches[idx].field_256
                    mem[_1949 + 64] = tranches[idx].field_256
                    mem[_1949 + 96] = -(0 / tranches[idx].field_256) + 10^18
                    mem[_1949 + 128] = tranches[idx].field_512
                    mem[_1949 + 160] = tranches[idx].field_768
                    mem[_1949 + 192] = sub_27e79c44
                    mem[_1949 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_768 = -(0 / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = tranches[idx].field_256
                    mem[mem[64] + 128] = -(0 / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256, -(0 / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = tranches[idx].field_256
                    s = -(0 / tranches[idx].field_256) + 10^18
                    s = s - tranches[idx].field_256
                    continue 
                if (0 / tranches[idx].field_256) + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                _1979 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1979] = tranches[idx].field_0
                mem[_1979 + 32] = tranches[idx].field_256
                mem[_1979 + 64] = tranches[idx].field_256
                mem[_1979 + 96] = (0 / tranches[idx].field_256) + 10^18
                mem[_1979 + 128] = tranches[idx].field_512
                mem[_1979 + 160] = tranches[idx].field_768
                mem[_1979 + 192] = sub_27e79c44
                mem[_1979 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_768 = (0 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = tranches[idx].field_256
                mem[mem[64] + 128] = (0 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256, (0 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = tranches[idx].field_256
                s = (0 / tranches[idx].field_256) + 10^18
                s = s - tranches[idx].field_256
                continue 
            if tranches[idx].field_768 * tranches[idx].field_256 / tranches[idx].field_256 != tranches[idx].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if (tranches[idx].field_768 * tranches[idx].field_256 / 100000) + sub_f8fa9cdb < sub_f8fa9cdb:
                revert with 0, 'SafeMath: addition overflow'
            sub_f8fa9cdb += tranches[idx].field_768 * tranches[idx].field_256 / 100000
            if tranches[idx].field_768 * tranches[idx].field_256 / 100000 > tranches[idx].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000) == tranches[idx].field_256:
                _1826 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1826] = tranches[idx].field_0
                mem[_1826 + 32] = tranches[idx].field_256
                mem[_1826 + 64] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                mem[_1826 + 96] = 10^18
                mem[_1826 + 128] = tranches[idx].field_512
                mem[_1826 + 160] = tranches[idx].field_768
                mem[_1826 + 192] = sub_27e79c44
                mem[_1826 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                sub_ae4f9c74[stor4][idx].field_768 = 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                mem[mem[64] + 128] = 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000), 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                s = 10^18
                s = s - tranches[idx].field_256
                continue 
            if tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000) <= tranches[idx].field_256:
                if not tranches[idx].field_768 * tranches[idx].field_256 / 100000:
                    if tranches[idx].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[idx].field_256
                    if 0 / tranches[idx].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _2003 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2003] = tranches[idx].field_0
                    mem[_2003 + 32] = tranches[idx].field_256
                    mem[_2003 + 64] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                    mem[_2003 + 96] = -(0 / tranches[idx].field_256) + 10^18
                    mem[_2003 + 128] = tranches[idx].field_512
                    mem[_2003 + 160] = tranches[idx].field_768
                    mem[_2003 + 192] = sub_27e79c44
                    mem[_2003 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                    sub_ae4f9c74[stor4][idx].field_768 = -(0 / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                    mem[mem[64] + 128] = -(0 / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000), -(0 / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                    s = -(0 / tranches[idx].field_256) + 10^18
                    s = s - tranches[idx].field_256
                    continue 
                if 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_768 * tranches[idx].field_256 / 100000 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                _2080 = mem[64]
                mem[64] = mem[64] + 256
                mem[_2080] = tranches[idx].field_0
                mem[_2080 + 32] = tranches[idx].field_256
                mem[_2080 + 64] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                mem[_2080 + 96] = -(10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
                mem[_2080 + 128] = tranches[idx].field_512
                mem[_2080 + 160] = tranches[idx].field_768
                mem[_2080 + 192] = sub_27e79c44
                mem[_2080 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                sub_ae4f9c74[stor4][idx].field_768 = -(10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                mem[mem[64] + 128] = -(10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000), -(10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                s = -(10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
                s = s - tranches[idx].field_256
                continue 
            if not -tranches[idx].field_768 * tranches[idx].field_256 / 100000:
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if (0 / tranches[idx].field_256) + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                _2042 = mem[64]
                mem[64] = mem[64] + 256
                mem[_2042] = tranches[idx].field_0
                mem[_2042 + 32] = tranches[idx].field_256
                mem[_2042 + 64] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                mem[_2042 + 96] = (0 / tranches[idx].field_256) + 10^18
                mem[_2042 + 128] = tranches[idx].field_512
                mem[_2042 + 160] = tranches[idx].field_768
                mem[_2042 + 192] = sub_27e79c44
                mem[_2042 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                sub_ae4f9c74[stor4][idx].field_768 = (0 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                mem[mem[64] + 128] = (0 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000), (0 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                s = (0 / tranches[idx].field_256) + 10^18
                s = s - tranches[idx].field_256
                continue 
            if -1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / -tranches[idx].field_768 * tranches[idx].field_256 / 100000 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if tranches[idx].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require tranches[idx].field_256
            if (-1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18 < 10^18:
                revert with 0, 'SafeMath: addition overflow'
            _2126 = mem[64]
            mem[64] = mem[64] + 256
            mem[_2126] = tranches[idx].field_0
            mem[_2126 + 32] = tranches[idx].field_256
            mem[_2126 + 64] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
            mem[_2126 + 96] = (-1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
            mem[_2126 + 128] = tranches[idx].field_512
            mem[_2126 + 160] = tranches[idx].field_768
            mem[_2126 + 192] = sub_27e79c44
            mem[_2126 + 224] = block.timestamp
            mem[0] = idx
            mem[32] = sha3(cycle, 14)
            sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
            sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
            sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
            sub_ae4f9c74[stor4][idx].field_768 = (-1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
            sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
            sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
            sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
            sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
            tranches[idx].field_256 = 0
            mem[mem[64]] = idx
            mem[mem[64] + 32] = cycle
            mem[mem[64] + 64] = tranches[idx].field_256
            mem[mem[64] + 96] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
            mem[mem[64] + 128] = (-1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
            emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000), (-1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
            idx = idx + 1
            s = tranches[idx].field_256
            s = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
            s = (-1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
            s = s - tranches[idx].field_256
            continue 
        if tranches[idx].field_512 * tranches[idx].field_256 / tranches[idx].field_256 != tranches[idx].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        if not tranches[idx].field_512 * tranches[idx].field_256:
            if tranches[idx].field_256 < tranches[idx].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if s < tranches[idx].field_256:
                if s == tranches[idx].field_256:
                    _1292 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1292] = tranches[idx].field_0
                    mem[_1292 + 32] = tranches[idx].field_256
                    mem[_1292 + 64] = s
                    mem[_1292 + 96] = 10^18
                    mem[_1292 + 128] = tranches[idx].field_512
                    mem[_1292 + 160] = tranches[idx].field_768
                    mem[_1292 + 192] = sub_27e79c44
                    mem[_1292 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = s
                    sub_ae4f9c74[stor4][idx].field_768 = 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = s
                    mem[mem[64] + 128] = 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = s
                    s = 10^18
                    s = 0
                    continue 
                if s <= tranches[idx].field_256:
                    if not tranches[idx].field_256 - s:
                        if tranches[idx].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require tranches[idx].field_256
                        if 0 / tranches[idx].field_256 > 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _1544 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_1544] = tranches[idx].field_0
                        mem[_1544 + 32] = tranches[idx].field_256
                        mem[_1544 + 64] = s
                        mem[_1544 + 96] = -(0 / tranches[idx].field_256) + 10^18
                        mem[_1544 + 128] = tranches[idx].field_512
                        mem[_1544 + 160] = tranches[idx].field_768
                        mem[_1544 + 192] = sub_27e79c44
                        mem[_1544 + 224] = block.timestamp
                        mem[0] = idx
                        mem[32] = sha3(cycle, 14)
                        sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                        sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                        sub_ae4f9c74[stor4][idx].field_512 = s
                        sub_ae4f9c74[stor4][idx].field_768 = -(0 / tranches[idx].field_256) + 10^18
                        sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                        sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                        sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                        sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                        tranches[idx].field_256 = 0
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = cycle
                        mem[mem[64] + 64] = tranches[idx].field_256
                        mem[mem[64] + 96] = s
                        mem[mem[64] + 128] = -(0 / tranches[idx].field_256) + 10^18
                        emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, -(0 / tranches[idx].field_256) + 10^18
                        idx = idx + 1
                        s = tranches[idx].field_256
                        s = s
                        s = -(0 / tranches[idx].field_256) + 10^18
                        s = 0
                        continue 
                    if (10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256 - s != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if tranches[idx].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[idx].field_256
                    if (10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1638 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1638] = tranches[idx].field_0
                    mem[_1638 + 32] = tranches[idx].field_256
                    mem[_1638 + 64] = s
                    mem[_1638 + 96] = -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                    mem[_1638 + 128] = tranches[idx].field_512
                    mem[_1638 + 160] = tranches[idx].field_768
                    mem[_1638 + 192] = sub_27e79c44
                    mem[_1638 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = s
                    sub_ae4f9c74[stor4][idx].field_768 = -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = s
                    mem[mem[64] + 128] = -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = s
                    s = -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                    s = 0
                    continue 
                if not s - tranches[idx].field_256:
                    if tranches[idx].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[idx].field_256
                    if (0 / tranches[idx].field_256) + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    _1581 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1581] = tranches[idx].field_0
                    mem[_1581 + 32] = tranches[idx].field_256
                    mem[_1581 + 64] = s
                    mem[_1581 + 96] = (0 / tranches[idx].field_256) + 10^18
                    mem[_1581 + 128] = tranches[idx].field_512
                    mem[_1581 + 160] = tranches[idx].field_768
                    mem[_1581 + 192] = sub_27e79c44
                    mem[_1581 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = s
                    sub_ae4f9c74[stor4][idx].field_768 = (0 / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = s
                    mem[mem[64] + 128] = (0 / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, (0 / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = s
                    s = (0 / tranches[idx].field_256) + 10^18
                    s = 0
                    continue 
                if (10^18 * s) - (10^18 * tranches[idx].field_256) / s - tranches[idx].field_256 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                _1694 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1694] = tranches[idx].field_0
                mem[_1694 + 32] = tranches[idx].field_256
                mem[_1694 + 64] = s
                mem[_1694 + 96] = ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
                mem[_1694 + 128] = tranches[idx].field_512
                mem[_1694 + 160] = tranches[idx].field_768
                mem[_1694 + 192] = sub_27e79c44
                mem[_1694 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = s
                sub_ae4f9c74[stor4][idx].field_768 = ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = s
                mem[mem[64] + 128] = ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = s
                s = ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
                s = 0
                continue 
            if tranches[idx].field_256 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if s < tranches[idx].field_256:
                if tranches[idx].field_256 == tranches[idx].field_256:
                    _1393 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1393] = tranches[idx].field_0
                    mem[_1393 + 32] = tranches[idx].field_256
                    mem[_1393 + 64] = tranches[idx].field_256
                    mem[_1393 + 96] = 10^18
                    mem[_1393 + 128] = tranches[idx].field_512
                    mem[_1393 + 160] = tranches[idx].field_768
                    mem[_1393 + 192] = sub_27e79c44
                    mem[_1393 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_768 = 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = tranches[idx].field_256
                    mem[mem[64] + 128] = 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256, 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = tranches[idx].field_256
                    s = 10^18
                    s = s - tranches[idx].field_256
                    continue 
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if tranches[idx].field_256 <= tranches[idx].field_256:
                    if 0 / tranches[idx].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1680 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1680] = tranches[idx].field_0
                    mem[_1680 + 32] = tranches[idx].field_256
                    mem[_1680 + 64] = tranches[idx].field_256
                    mem[_1680 + 96] = -(0 / tranches[idx].field_256) + 10^18
                    mem[_1680 + 128] = tranches[idx].field_512
                    mem[_1680 + 160] = tranches[idx].field_768
                    mem[_1680 + 192] = sub_27e79c44
                    mem[_1680 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_768 = -(0 / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = tranches[idx].field_256
                    mem[mem[64] + 128] = -(0 / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256, -(0 / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = tranches[idx].field_256
                    s = -(0 / tranches[idx].field_256) + 10^18
                    s = s - tranches[idx].field_256
                    continue 
                if (0 / tranches[idx].field_256) + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                _1727 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1727] = tranches[idx].field_0
                mem[_1727 + 32] = tranches[idx].field_256
                mem[_1727 + 64] = tranches[idx].field_256
                mem[_1727 + 96] = (0 / tranches[idx].field_256) + 10^18
                mem[_1727 + 128] = tranches[idx].field_512
                mem[_1727 + 160] = tranches[idx].field_768
                mem[_1727 + 192] = sub_27e79c44
                mem[_1727 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_768 = (0 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = tranches[idx].field_256
                mem[mem[64] + 128] = (0 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256, (0 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = tranches[idx].field_256
                s = (0 / tranches[idx].field_256) + 10^18
                s = s - tranches[idx].field_256
                continue 
            if not tranches[idx].field_256:
                if sub_f8fa9cdb < sub_f8fa9cdb:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > tranches[idx].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tranches[idx].field_256 == tranches[idx].field_256:
                    _1814 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1814] = tranches[idx].field_0
                    mem[_1814 + 32] = tranches[idx].field_256
                    mem[_1814 + 64] = tranches[idx].field_256
                    mem[_1814 + 96] = 10^18
                    mem[_1814 + 128] = tranches[idx].field_512
                    mem[_1814 + 160] = tranches[idx].field_768
                    mem[_1814 + 192] = sub_27e79c44
                    mem[_1814 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_768 = 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = tranches[idx].field_256
                    mem[mem[64] + 128] = 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256, 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = tranches[idx].field_256
                    s = 10^18
                    s = s - tranches[idx].field_256
                    continue 
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if tranches[idx].field_256 <= tranches[idx].field_256:
                    if 0 / tranches[idx].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1991 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1991] = tranches[idx].field_0
                    mem[_1991 + 32] = tranches[idx].field_256
                    mem[_1991 + 64] = tranches[idx].field_256
                    mem[_1991 + 96] = -(0 / tranches[idx].field_256) + 10^18
                    mem[_1991 + 128] = tranches[idx].field_512
                    mem[_1991 + 160] = tranches[idx].field_768
                    mem[_1991 + 192] = sub_27e79c44
                    mem[_1991 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_768 = -(0 / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = tranches[idx].field_256
                    mem[mem[64] + 128] = -(0 / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256, -(0 / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = tranches[idx].field_256
                    s = -(0 / tranches[idx].field_256) + 10^18
                    s = s - tranches[idx].field_256
                    continue 
                if (0 / tranches[idx].field_256) + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                _2028 = mem[64]
                mem[64] = mem[64] + 256
                mem[_2028] = tranches[idx].field_0
                mem[_2028 + 32] = tranches[idx].field_256
                mem[_2028 + 64] = tranches[idx].field_256
                mem[_2028 + 96] = (0 / tranches[idx].field_256) + 10^18
                mem[_2028 + 128] = tranches[idx].field_512
                mem[_2028 + 160] = tranches[idx].field_768
                mem[_2028 + 192] = sub_27e79c44
                mem[_2028 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_768 = (0 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = tranches[idx].field_256
                mem[mem[64] + 128] = (0 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256, (0 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = tranches[idx].field_256
                s = (0 / tranches[idx].field_256) + 10^18
                s = s - tranches[idx].field_256
                continue 
            if tranches[idx].field_768 * tranches[idx].field_256 / tranches[idx].field_256 != tranches[idx].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if (tranches[idx].field_768 * tranches[idx].field_256 / 100000) + sub_f8fa9cdb < sub_f8fa9cdb:
                revert with 0, 'SafeMath: addition overflow'
            sub_f8fa9cdb += tranches[idx].field_768 * tranches[idx].field_256 / 100000
            if tranches[idx].field_768 * tranches[idx].field_256 / 100000 > tranches[idx].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000) == tranches[idx].field_256:
                _1865 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1865] = tranches[idx].field_0
                mem[_1865 + 32] = tranches[idx].field_256
                mem[_1865 + 64] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                mem[_1865 + 96] = 10^18
                mem[_1865 + 128] = tranches[idx].field_512
                mem[_1865 + 160] = tranches[idx].field_768
                mem[_1865 + 192] = sub_27e79c44
                mem[_1865 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                sub_ae4f9c74[stor4][idx].field_768 = 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                mem[mem[64] + 128] = 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000), 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                s = 10^18
                s = s - tranches[idx].field_256
                continue 
            if tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000) <= tranches[idx].field_256:
                if not tranches[idx].field_768 * tranches[idx].field_256 / 100000:
                    if tranches[idx].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[idx].field_256
                    if 0 / tranches[idx].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _2067 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2067] = tranches[idx].field_0
                    mem[_2067 + 32] = tranches[idx].field_256
                    mem[_2067 + 64] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                    mem[_2067 + 96] = -(0 / tranches[idx].field_256) + 10^18
                    mem[_2067 + 128] = tranches[idx].field_512
                    mem[_2067 + 160] = tranches[idx].field_768
                    mem[_2067 + 192] = sub_27e79c44
                    mem[_2067 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                    sub_ae4f9c74[stor4][idx].field_768 = -(0 / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                    mem[mem[64] + 128] = -(0 / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000), -(0 / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                    s = -(0 / tranches[idx].field_256) + 10^18
                    s = s - tranches[idx].field_256
                    continue 
                if 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_768 * tranches[idx].field_256 / 100000 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                _2164 = mem[64]
                mem[64] = mem[64] + 256
                mem[_2164] = tranches[idx].field_0
                mem[_2164 + 32] = tranches[idx].field_256
                mem[_2164 + 64] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                mem[_2164 + 96] = -(10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
                mem[_2164 + 128] = tranches[idx].field_512
                mem[_2164 + 160] = tranches[idx].field_768
                mem[_2164 + 192] = sub_27e79c44
                mem[_2164 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                sub_ae4f9c74[stor4][idx].field_768 = -(10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                mem[mem[64] + 128] = -(10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000), -(10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                s = -(10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
                s = s - tranches[idx].field_256
                continue 
            if not -tranches[idx].field_768 * tranches[idx].field_256 / 100000:
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if (0 / tranches[idx].field_256) + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                _2113 = mem[64]
                mem[64] = mem[64] + 256
                mem[_2113] = tranches[idx].field_0
                mem[_2113 + 32] = tranches[idx].field_256
                mem[_2113 + 64] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                mem[_2113 + 96] = (0 / tranches[idx].field_256) + 10^18
                mem[_2113 + 128] = tranches[idx].field_512
                mem[_2113 + 160] = tranches[idx].field_768
                mem[_2113 + 192] = sub_27e79c44
                mem[_2113 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                sub_ae4f9c74[stor4][idx].field_768 = (0 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                mem[mem[64] + 128] = (0 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000), (0 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
                s = (0 / tranches[idx].field_256) + 10^18
                s = s - tranches[idx].field_256
                continue 
            if -1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / -tranches[idx].field_768 * tranches[idx].field_256 / 100000 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if tranches[idx].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require tranches[idx].field_256
            if (-1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18 < 10^18:
                revert with 0, 'SafeMath: addition overflow'
            _2205 = mem[64]
            mem[64] = mem[64] + 256
            mem[_2205] = tranches[idx].field_0
            mem[_2205 + 32] = tranches[idx].field_256
            mem[_2205 + 64] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
            mem[_2205 + 96] = (-1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
            mem[_2205 + 128] = tranches[idx].field_512
            mem[_2205 + 160] = tranches[idx].field_768
            mem[_2205 + 192] = sub_27e79c44
            mem[_2205 + 224] = block.timestamp
            mem[0] = idx
            mem[32] = sha3(cycle, 14)
            sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
            sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
            sub_ae4f9c74[stor4][idx].field_512 = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
            sub_ae4f9c74[stor4][idx].field_768 = (-1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
            sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
            sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
            sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
            sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
            tranches[idx].field_256 = 0
            mem[mem[64]] = idx
            mem[mem[64] + 32] = cycle
            mem[mem[64] + 64] = tranches[idx].field_256
            mem[mem[64] + 96] = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
            mem[mem[64] + 128] = (-1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
            emit 0x465c3a69: idx, cycle, tranches[idx].field_256, tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000), (-1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
            idx = idx + 1
            s = tranches[idx].field_256
            s = tranches[idx].field_256 - (tranches[idx].field_768 * tranches[idx].field_256 / 100000)
            s = (-1 * 10^18 * tranches[idx].field_768 * tranches[idx].field_256 / 100000 / tranches[idx].field_256) + 10^18
            s = s - tranches[idx].field_256
            continue 
        if (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / tranches[idx].field_512 * tranches[idx].field_256 != block.timestamp - sub_27e79c44:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 < tranches[idx].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if s < ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256:
            if s == tranches[idx].field_256:
                _1363 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1363] = tranches[idx].field_0
                mem[_1363 + 32] = tranches[idx].field_256
                mem[_1363 + 64] = s
                mem[_1363 + 96] = 10^18
                mem[_1363 + 128] = tranches[idx].field_512
                mem[_1363 + 160] = tranches[idx].field_768
                mem[_1363 + 192] = sub_27e79c44
                mem[_1363 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = s
                sub_ae4f9c74[stor4][idx].field_768 = 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = s
                mem[mem[64] + 128] = 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = s
                s = 10^18
                s = 0
                continue 
            if s <= tranches[idx].field_256:
                if not tranches[idx].field_256 - s:
                    if tranches[idx].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[idx].field_256
                    if 0 / tranches[idx].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1624 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1624] = tranches[idx].field_0
                    mem[_1624 + 32] = tranches[idx].field_256
                    mem[_1624 + 64] = s
                    mem[_1624 + 96] = -(0 / tranches[idx].field_256) + 10^18
                    mem[_1624 + 128] = tranches[idx].field_512
                    mem[_1624 + 160] = tranches[idx].field_768
                    mem[_1624 + 192] = sub_27e79c44
                    mem[_1624 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = s
                    sub_ae4f9c74[stor4][idx].field_768 = -(0 / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = s
                    mem[mem[64] + 128] = -(0 / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, -(0 / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = s
                    s = -(0 / tranches[idx].field_256) + 10^18
                    s = 0
                    continue 
                if (10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256 - s != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if (10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                _1714 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1714] = tranches[idx].field_0
                mem[_1714 + 32] = tranches[idx].field_256
                mem[_1714 + 64] = s
                mem[_1714 + 96] = -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                mem[_1714 + 128] = tranches[idx].field_512
                mem[_1714 + 160] = tranches[idx].field_768
                mem[_1714 + 192] = sub_27e79c44
                mem[_1714 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = s
                sub_ae4f9c74[stor4][idx].field_768 = -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = s
                mem[mem[64] + 128] = -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = s
                s = -((10^18 * tranches[idx].field_256) - (10^18 * s) / tranches[idx].field_256) + 10^18
                s = 0
                continue 
            if not s - tranches[idx].field_256:
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if (0 / tranches[idx].field_256) + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                _1668 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1668] = tranches[idx].field_0
                mem[_1668 + 32] = tranches[idx].field_256
                mem[_1668 + 64] = s
                mem[_1668 + 96] = (0 / tranches[idx].field_256) + 10^18
                mem[_1668 + 128] = tranches[idx].field_512
                mem[_1668 + 160] = tranches[idx].field_768
                mem[_1668 + 192] = sub_27e79c44
                mem[_1668 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = s
                sub_ae4f9c74[stor4][idx].field_768 = (0 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = s
                mem[mem[64] + 128] = (0 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, (0 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = s
                s = (0 / tranches[idx].field_256) + 10^18
                s = 0
                continue 
            if (10^18 * s) - (10^18 * tranches[idx].field_256) / s - tranches[idx].field_256 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if tranches[idx].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require tranches[idx].field_256
            if ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18 < 10^18:
                revert with 0, 'SafeMath: addition overflow'
            _1755 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1755] = tranches[idx].field_0
            mem[_1755 + 32] = tranches[idx].field_256
            mem[_1755 + 64] = s
            mem[_1755 + 96] = ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
            mem[_1755 + 128] = tranches[idx].field_512
            mem[_1755 + 160] = tranches[idx].field_768
            mem[_1755 + 192] = sub_27e79c44
            mem[_1755 + 224] = block.timestamp
            mem[0] = idx
            mem[32] = sha3(cycle, 14)
            sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
            sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
            sub_ae4f9c74[stor4][idx].field_512 = s
            sub_ae4f9c74[stor4][idx].field_768 = ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
            sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
            sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
            sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
            sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
            tranches[idx].field_256 = 0
            mem[mem[64]] = idx
            mem[mem[64] + 32] = cycle
            mem[mem[64] + 64] = tranches[idx].field_256
            mem[mem[64] + 96] = s
            mem[mem[64] + 128] = ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
            emit 0x465c3a69: idx, cycle, tranches[idx].field_256, s, ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
            idx = idx + 1
            s = tranches[idx].field_256
            s = s
            s = ((10^18 * s) - (10^18 * tranches[idx].field_256) / tranches[idx].field_256) + 10^18
            s = 0
            continue 
        if ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 > s:
            revert with 0, 'SafeMath: subtraction overflow'
        if s < ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256:
            if ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 == tranches[idx].field_256:
                _1423 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1423] = tranches[idx].field_0
                mem[_1423 + 32] = tranches[idx].field_256
                mem[_1423 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                mem[_1423 + 96] = 10^18
                mem[_1423 + 128] = tranches[idx].field_512
                mem[_1423 + 160] = tranches[idx].field_768
                mem[_1423 + 192] = sub_27e79c44
                mem[_1423 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_768 = 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                mem[mem[64] + 128] = 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256, 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                s = 10^18
                s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
                continue 
            if ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 <= tranches[idx].field_256:
                if not -(block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18:
                    if tranches[idx].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[idx].field_256
                    if 0 / tranches[idx].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1741 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1741] = tranches[idx].field_0
                    mem[_1741 + 32] = tranches[idx].field_256
                    mem[_1741 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                    mem[_1741 + 96] = -(0 / tranches[idx].field_256) + 10^18
                    mem[_1741 + 128] = tranches[idx].field_512
                    mem[_1741 + 160] = tranches[idx].field_768
                    mem[_1741 + 192] = sub_27e79c44
                    mem[_1741 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_768 = -(0 / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                    mem[mem[64] + 128] = -(0 / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256, -(0 / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                    s = -(0 / tranches[idx].field_256) + 10^18
                    s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
                    continue 
                if -1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / -(block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if -1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                _1799 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1799] = tranches[idx].field_0
                mem[_1799 + 32] = tranches[idx].field_256
                mem[_1799 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                mem[_1799 + 96] = -(-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
                mem[_1799 + 128] = tranches[idx].field_512
                mem[_1799 + 160] = tranches[idx].field_768
                mem[_1799 + 192] = sub_27e79c44
                mem[_1799 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_768 = -(-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                mem[mem[64] + 128] = -(-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256, -(-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                s = -(-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
                s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
                continue 
            if not (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18:
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if (0 / tranches[idx].field_256) + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                _1785 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1785] = tranches[idx].field_0
                mem[_1785 + 32] = tranches[idx].field_256
                mem[_1785 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                mem[_1785 + 96] = (0 / tranches[idx].field_256) + 10^18
                mem[_1785 + 128] = tranches[idx].field_512
                mem[_1785 + 160] = tranches[idx].field_768
                mem[_1785 + 192] = sub_27e79c44
                mem[_1785 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_768 = (0 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                mem[mem[64] + 128] = (0 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256, (0 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                s = (0 / tranches[idx].field_256) + 10^18
                s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
                continue 
            if 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if tranches[idx].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require tranches[idx].field_256
            if (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18 < 10^18:
                revert with 0, 'SafeMath: addition overflow'
            _1839 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1839] = tranches[idx].field_0
            mem[_1839 + 32] = tranches[idx].field_256
            mem[_1839 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
            mem[_1839 + 96] = (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
            mem[_1839 + 128] = tranches[idx].field_512
            mem[_1839 + 160] = tranches[idx].field_768
            mem[_1839 + 192] = sub_27e79c44
            mem[_1839 + 224] = block.timestamp
            mem[0] = idx
            mem[32] = sha3(cycle, 14)
            sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
            sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
            sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
            sub_ae4f9c74[stor4][idx].field_768 = (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
            sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
            sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
            sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
            sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
            tranches[idx].field_256 = 0
            mem[mem[64]] = idx
            mem[mem[64] + 32] = cycle
            mem[mem[64] + 64] = tranches[idx].field_256
            mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
            mem[mem[64] + 128] = (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
            emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256, (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
            idx = idx + 1
            s = tranches[idx].field_256
            s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
            s = (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
            s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
            continue 
        if not ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256:
            if sub_f8fa9cdb < sub_f8fa9cdb:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 == tranches[idx].field_256:
                _1853 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1853] = tranches[idx].field_0
                mem[_1853 + 32] = tranches[idx].field_256
                mem[_1853 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                mem[_1853 + 96] = 10^18
                mem[_1853 + 128] = tranches[idx].field_512
                mem[_1853 + 160] = tranches[idx].field_768
                mem[_1853 + 192] = sub_27e79c44
                mem[_1853 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_768 = 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                mem[mem[64] + 128] = 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256, 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                s = 10^18
                s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
                continue 
            if ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 <= tranches[idx].field_256:
                if not -(block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18:
                    if tranches[idx].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[idx].field_256
                    if 0 / tranches[idx].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _2055 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2055] = tranches[idx].field_0
                    mem[_2055 + 32] = tranches[idx].field_256
                    mem[_2055 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                    mem[_2055 + 96] = -(0 / tranches[idx].field_256) + 10^18
                    mem[_2055 + 128] = tranches[idx].field_512
                    mem[_2055 + 160] = tranches[idx].field_768
                    mem[_2055 + 192] = sub_27e79c44
                    mem[_2055 + 224] = block.timestamp
                    mem[0] = idx
                    mem[32] = sha3(cycle, 14)
                    sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                    sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                    sub_ae4f9c74[stor4][idx].field_768 = -(0 / tranches[idx].field_256) + 10^18
                    sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                    sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                    sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                    tranches[idx].field_256 = 0
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = cycle
                    mem[mem[64] + 64] = tranches[idx].field_256
                    mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                    mem[mem[64] + 128] = -(0 / tranches[idx].field_256) + 10^18
                    emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256, -(0 / tranches[idx].field_256) + 10^18
                    idx = idx + 1
                    s = tranches[idx].field_256
                    s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                    s = -(0 / tranches[idx].field_256) + 10^18
                    s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
                    continue 
                if -1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / -(block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if -1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                _2151 = mem[64]
                mem[64] = mem[64] + 256
                mem[_2151] = tranches[idx].field_0
                mem[_2151 + 32] = tranches[idx].field_256
                mem[_2151 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                mem[_2151 + 96] = -(-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
                mem[_2151 + 128] = tranches[idx].field_512
                mem[_2151 + 160] = tranches[idx].field_768
                mem[_2151 + 192] = sub_27e79c44
                mem[_2151 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_768 = -(-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                mem[mem[64] + 128] = -(-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256, -(-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                s = -(-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
                s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
                continue 
            if not (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18:
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if (0 / tranches[idx].field_256) + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                _2099 = mem[64]
                mem[64] = mem[64] + 256
                mem[_2099] = tranches[idx].field_0
                mem[_2099 + 32] = tranches[idx].field_256
                mem[_2099 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                mem[_2099 + 96] = (0 / tranches[idx].field_256) + 10^18
                mem[_2099 + 128] = tranches[idx].field_512
                mem[_2099 + 160] = tranches[idx].field_768
                mem[_2099 + 192] = sub_27e79c44
                mem[_2099 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_768 = (0 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                mem[mem[64] + 128] = (0 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256, (0 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
                s = (0 / tranches[idx].field_256) + 10^18
                s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
                continue 
            if 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if tranches[idx].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require tranches[idx].field_256
            if (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18 < 10^18:
                revert with 0, 'SafeMath: addition overflow'
            _2192 = mem[64]
            mem[64] = mem[64] + 256
            mem[_2192] = tranches[idx].field_0
            mem[_2192 + 32] = tranches[idx].field_256
            mem[_2192 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
            mem[_2192 + 96] = (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
            mem[_2192 + 128] = tranches[idx].field_512
            mem[_2192 + 160] = tranches[idx].field_768
            mem[_2192 + 192] = sub_27e79c44
            mem[_2192 + 224] = block.timestamp
            mem[0] = idx
            mem[32] = sha3(cycle, 14)
            sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
            sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
            sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
            sub_ae4f9c74[stor4][idx].field_768 = (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
            sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
            sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
            sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
            sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
            tranches[idx].field_256 = 0
            mem[mem[64]] = idx
            mem[mem[64] + 32] = cycle
            mem[mem[64] + 64] = tranches[idx].field_256
            mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
            mem[mem[64] + 128] = (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
            emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256, (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
            idx = idx + 1
            s = tranches[idx].field_256
            s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256
            s = (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 / tranches[idx].field_256) + 10^18
            s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
            continue 
        if ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 != tranches[idx].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) + sub_f8fa9cdb < sub_f8fa9cdb:
            revert with 0, 'SafeMath: addition overflow'
        sub_f8fa9cdb += ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000
        if ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000 > ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) == tranches[idx].field_256:
            _1884 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1884] = tranches[idx].field_0
            mem[_1884 + 32] = tranches[idx].field_256
            mem[_1884 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
            mem[_1884 + 96] = 10^18
            mem[_1884 + 128] = tranches[idx].field_512
            mem[_1884 + 160] = tranches[idx].field_768
            mem[_1884 + 192] = sub_27e79c44
            mem[_1884 + 224] = block.timestamp
            mem[0] = idx
            mem[32] = sha3(cycle, 14)
            sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
            sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
            sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
            sub_ae4f9c74[stor4][idx].field_768 = 10^18
            sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
            sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
            sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
            sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
            tranches[idx].field_256 = 0
            mem[mem[64]] = idx
            mem[mem[64] + 32] = cycle
            mem[mem[64] + 64] = tranches[idx].field_256
            mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
            mem[mem[64] + 128] = 10^18
            emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000), 10^18
            idx = idx + 1
            s = tranches[idx].field_256
            s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
            s = 10^18
            s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
            continue 
        if ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) <= tranches[idx].field_256:
            if not -((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000):
                if tranches[idx].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require tranches[idx].field_256
                if 0 / tranches[idx].field_256 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                _2139 = mem[64]
                mem[64] = mem[64] + 256
                mem[_2139] = tranches[idx].field_0
                mem[_2139 + 32] = tranches[idx].field_256
                mem[_2139 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
                mem[_2139 + 96] = -(0 / tranches[idx].field_256) + 10^18
                mem[_2139 + 128] = tranches[idx].field_512
                mem[_2139 + 160] = tranches[idx].field_768
                mem[_2139 + 192] = sub_27e79c44
                mem[_2139 + 224] = block.timestamp
                mem[0] = idx
                mem[32] = sha3(cycle, 14)
                sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
                sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
                sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
                sub_ae4f9c74[stor4][idx].field_768 = -(0 / tranches[idx].field_256) + 10^18
                sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
                sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
                sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
                sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
                tranches[idx].field_256 = 0
                mem[mem[64]] = idx
                mem[mem[64] + 32] = cycle
                mem[mem[64] + 64] = tranches[idx].field_256
                mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
                mem[mem[64] + 128] = -(0 / tranches[idx].field_256) + 10^18
                emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000), -(0 / tranches[idx].field_256) + 10^18
                idx = idx + 1
                s = tranches[idx].field_256
                s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
                s = -(0 / tranches[idx].field_256) + 10^18
                s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
                continue 
            if (-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / -((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if tranches[idx].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require tranches[idx].field_256
            if (-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / tranches[idx].field_256 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            _2219 = mem[64]
            mem[64] = mem[64] + 256
            mem[_2219] = tranches[idx].field_0
            mem[_2219 + 32] = tranches[idx].field_256
            mem[_2219 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
            mem[_2219 + 96] = -((-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / tranches[idx].field_256) + 10^18
            mem[_2219 + 128] = tranches[idx].field_512
            mem[_2219 + 160] = tranches[idx].field_768
            mem[_2219 + 192] = sub_27e79c44
            mem[_2219 + 224] = block.timestamp
            mem[0] = idx
            mem[32] = sha3(cycle, 14)
            sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
            sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
            sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
            sub_ae4f9c74[stor4][idx].field_768 = -((-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / tranches[idx].field_256) + 10^18
            sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
            sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
            sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
            sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
            tranches[idx].field_256 = 0
            mem[mem[64]] = idx
            mem[mem[64] + 32] = cycle
            mem[mem[64] + 64] = tranches[idx].field_256
            mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
            mem[mem[64] + 128] = -((-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / tranches[idx].field_256) + 10^18
            emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000), -((-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / tranches[idx].field_256) + 10^18
            idx = idx + 1
            s = tranches[idx].field_256
            s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
            s = -((-1 * 10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / tranches[idx].field_256) + 10^18
            s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
            continue 
        if not ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000):
            if tranches[idx].field_256 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require tranches[idx].field_256
            if (0 / tranches[idx].field_256) + 10^18 < 10^18:
                revert with 0, 'SafeMath: addition overflow'
            _2180 = mem[64]
            mem[64] = mem[64] + 256
            mem[_2180] = tranches[idx].field_0
            mem[_2180 + 32] = tranches[idx].field_256
            mem[_2180 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
            mem[_2180 + 96] = (0 / tranches[idx].field_256) + 10^18
            mem[_2180 + 128] = tranches[idx].field_512
            mem[_2180 + 160] = tranches[idx].field_768
            mem[_2180 + 192] = sub_27e79c44
            mem[_2180 + 224] = block.timestamp
            mem[0] = idx
            mem[32] = sha3(cycle, 14)
            sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
            sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
            sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
            sub_ae4f9c74[stor4][idx].field_768 = (0 / tranches[idx].field_256) + 10^18
            sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
            sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
            sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
            sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
            tranches[idx].field_256 = 0
            mem[mem[64]] = idx
            mem[mem[64] + 32] = cycle
            mem[mem[64] + 64] = tranches[idx].field_256
            mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
            mem[mem[64] + 128] = (0 / tranches[idx].field_256) + 10^18
            emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000), (0 / tranches[idx].field_256) + 10^18
            idx = idx + 1
            s = tranches[idx].field_256
            s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
            s = (0 / tranches[idx].field_256) + 10^18
            s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
            continue 
        if (10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if tranches[idx].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require tranches[idx].field_256
        if ((10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / tranches[idx].field_256) + 10^18 < 10^18:
            revert with 0, 'SafeMath: addition overflow'
        _2234 = mem[64]
        mem[64] = mem[64] + 256
        mem[_2234] = tranches[idx].field_0
        mem[_2234 + 32] = tranches[idx].field_256
        mem[_2234 + 64] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
        mem[_2234 + 96] = ((10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / tranches[idx].field_256) + 10^18
        mem[_2234 + 128] = tranches[idx].field_512
        mem[_2234 + 160] = tranches[idx].field_768
        mem[_2234 + 192] = sub_27e79c44
        mem[_2234 + 224] = block.timestamp
        mem[0] = idx
        mem[32] = sha3(cycle, 14)
        sub_ae4f9c74[stor4][idx].field_0 = tranches[idx].field_0
        sub_ae4f9c74[stor4][idx].field_256 = tranches[idx].field_256
        sub_ae4f9c74[stor4][idx].field_512 = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
        sub_ae4f9c74[stor4][idx].field_768 = ((10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / tranches[idx].field_256) + 10^18
        sub_ae4f9c74[stor4][idx].field_1024 = tranches[idx].field_512
        sub_ae4f9c74[stor4][idx].field_1280 = tranches[idx].field_768
        sub_ae4f9c74[stor4][idx].field_1536 = sub_27e79c44
        sub_ae4f9c74[stor4][idx].field_1792 = block.timestamp
        tranches[idx].field_256 = 0
        mem[mem[64]] = idx
        mem[mem[64] + 32] = cycle
        mem[mem[64] + 64] = tranches[idx].field_256
        mem[mem[64] + 96] = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
        mem[mem[64] + 128] = ((10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / tranches[idx].field_256) + 10^18
        emit 0x465c3a69: idx, cycle, tranches[idx].field_256, ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000), ((10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / tranches[idx].field_256) + 10^18
        idx = idx + 1
        s = tranches[idx].field_256
        s = ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) + tranches[idx].field_256 - (((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000)
        s = ((10^18 * (block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - (10^18 * ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18 * tranches[idx].field_768) + (tranches[idx].field_256 * tranches[idx].field_768) / 100000) / tranches[idx].field_256) + 10^18
        s = s - ((block.timestamp * tranches[idx].field_512 * tranches[idx].field_256) - (sub_27e79c44 * tranches[idx].field_512 * tranches[idx].field_256) / 365 / 24 * 3600 / 10^18) - tranches[idx].field_256
        continue 
    require tranches.length - 1 < tranches.length
    if not s:
        if sub_f8fa9cdb < sub_f8fa9cdb:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > s:
            revert with 0, 'SafeMath: subtraction overflow'
        if s == tranches[tranches.length - 1].field_256:
            sub_ae4f9c74[stor4][stor7.length - 1].field_0 = tranches[tranches.length - 1].field_0
            sub_ae4f9c74[stor4][stor7.length - 1].field_256 = tranches[tranches.length - 1].field_256
            sub_ae4f9c74[stor4][stor7.length - 1].field_512 = s
            sub_ae4f9c74[stor4][stor7.length - 1].field_768 = 10^18
            sub_ae4f9c74[stor4][stor7.length - 1].field_1024 = tranches[tranches.length - 1].field_512
            sub_ae4f9c74[stor4][stor7.length - 1].field_1280 = tranches[tranches.length - 1].field_768
            sub_ae4f9c74[stor4][stor7.length - 1].field_1536 = sub_27e79c44
            sub_ae4f9c74[stor4][stor7.length - 1].field_1792 = block.timestamp
            tranches[tranches.length - 1].field_256 = 0
            emit 0x465c3a69: tranches.length - 1, cycle, tranches[tranches.length - 1].field_256, s, 10^18
        else:
            if s <= tranches[tranches.length - 1].field_256:
                if not tranches[tranches.length - 1].field_256 - s:
                    if tranches[tranches.length - 1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[tranches.length - 1].field_256
                    if 0 / tranches[tranches.length - 1].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_ae4f9c74[stor4][stor7.length - 1].field_0 = tranches[tranches.length - 1].field_0
                    sub_ae4f9c74[stor4][stor7.length - 1].field_256 = tranches[tranches.length - 1].field_256
                    sub_ae4f9c74[stor4][stor7.length - 1].field_512 = s
                    sub_ae4f9c74[stor4][stor7.length - 1].field_768 = -(0 / tranches[tranches.length - 1].field_256) + 10^18
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1024 = tranches[tranches.length - 1].field_512
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1280 = tranches[tranches.length - 1].field_768
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1792 = block.timestamp
                    tranches[tranches.length - 1].field_256 = 0
                    emit 0x465c3a69: tranches.length - 1, cycle, tranches[tranches.length - 1].field_256, s, -(0 / tranches[tranches.length - 1].field_256) + 10^18
                else:
                    if (10^18 * tranches[tranches.length - 1].field_256) - (10^18 * s) / tranches[tranches.length - 1].field_256 - s != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if tranches[tranches.length - 1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[tranches.length - 1].field_256
                    if (10^18 * tranches[tranches.length - 1].field_256) - (10^18 * s) / tranches[tranches.length - 1].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_ae4f9c74[stor4][stor7.length - 1].field_0 = tranches[tranches.length - 1].field_0
                    sub_ae4f9c74[stor4][stor7.length - 1].field_256 = tranches[tranches.length - 1].field_256
                    sub_ae4f9c74[stor4][stor7.length - 1].field_512 = s
                    sub_ae4f9c74[stor4][stor7.length - 1].field_768 = -((10^18 * tranches[tranches.length - 1].field_256) - (10^18 * s) / tranches[tranches.length - 1].field_256) + 10^18
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1024 = tranches[tranches.length - 1].field_512
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1280 = tranches[tranches.length - 1].field_768
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1792 = block.timestamp
                    tranches[tranches.length - 1].field_256 = 0
                    emit 0x465c3a69: tranches.length - 1, cycle, tranches[tranches.length - 1].field_256, s, -((10^18 * tranches[tranches.length - 1].field_256) - (10^18 * s) / tranches[tranches.length - 1].field_256) + 10^18
            else:
                if not s - tranches[tranches.length - 1].field_256:
                    if tranches[tranches.length - 1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[tranches.length - 1].field_256
                    if (0 / tranches[tranches.length - 1].field_256) + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ae4f9c74[stor4][stor7.length - 1].field_0 = tranches[tranches.length - 1].field_0
                    sub_ae4f9c74[stor4][stor7.length - 1].field_256 = tranches[tranches.length - 1].field_256
                    sub_ae4f9c74[stor4][stor7.length - 1].field_512 = s
                    sub_ae4f9c74[stor4][stor7.length - 1].field_768 = (0 / tranches[tranches.length - 1].field_256) + 10^18
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1024 = tranches[tranches.length - 1].field_512
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1280 = tranches[tranches.length - 1].field_768
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1792 = block.timestamp
                    tranches[tranches.length - 1].field_256 = 0
                    emit 0x465c3a69: tranches.length - 1, cycle, tranches[tranches.length - 1].field_256, s, (0 / tranches[tranches.length - 1].field_256) + 10^18
                else:
                    if (10^18 * s) - (10^18 * tranches[tranches.length - 1].field_256) / s - tranches[tranches.length - 1].field_256 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if tranches[tranches.length - 1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[tranches.length - 1].field_256
                    if ((10^18 * s) - (10^18 * tranches[tranches.length - 1].field_256) / tranches[tranches.length - 1].field_256) + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ae4f9c74[stor4][stor7.length - 1].field_0 = tranches[tranches.length - 1].field_0
                    sub_ae4f9c74[stor4][stor7.length - 1].field_256 = tranches[tranches.length - 1].field_256
                    sub_ae4f9c74[stor4][stor7.length - 1].field_512 = s
                    sub_ae4f9c74[stor4][stor7.length - 1].field_768 = ((10^18 * s) - (10^18 * tranches[tranches.length - 1].field_256) / tranches[tranches.length - 1].field_256) + 10^18
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1024 = tranches[tranches.length - 1].field_512
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1280 = tranches[tranches.length - 1].field_768
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1792 = block.timestamp
                    tranches[tranches.length - 1].field_256 = 0
                    emit 0x465c3a69: tranches.length - 1, cycle, tranches[tranches.length - 1].field_256, s, ((10^18 * s) - (10^18 * tranches[tranches.length - 1].field_256) / tranches[tranches.length - 1].field_256) + 10^18
    else:
        if tranches[tranches.length - 1].field_768 * s / s != tranches[tranches.length - 1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if (tranches[tranches.length - 1].field_768 * s / 100000) + sub_f8fa9cdb < sub_f8fa9cdb:
            revert with 0, 'SafeMath: addition overflow'
        sub_f8fa9cdb += tranches[tranches.length - 1].field_768 * s / 100000
        if tranches[tranches.length - 1].field_768 * s / 100000 > s:
            revert with 0, 'SafeMath: subtraction overflow'
        if s - (tranches[tranches.length - 1].field_768 * s / 100000) == tranches[tranches.length - 1].field_256:
            sub_ae4f9c74[stor4][stor7.length - 1].field_0 = tranches[tranches.length - 1].field_0
            sub_ae4f9c74[stor4][stor7.length - 1].field_256 = tranches[tranches.length - 1].field_256
            sub_ae4f9c74[stor4][stor7.length - 1].field_512 = s - (tranches[tranches.length - 1].field_768 * s / 100000)
            sub_ae4f9c74[stor4][stor7.length - 1].field_768 = 10^18
            sub_ae4f9c74[stor4][stor7.length - 1].field_1024 = tranches[tranches.length - 1].field_512
            sub_ae4f9c74[stor4][stor7.length - 1].field_1280 = tranches[tranches.length - 1].field_768
            sub_ae4f9c74[stor4][stor7.length - 1].field_1536 = sub_27e79c44
            sub_ae4f9c74[stor4][stor7.length - 1].field_1792 = block.timestamp
            tranches[tranches.length - 1].field_256 = 0
            emit 0x465c3a69: tranches.length - 1, cycle, tranches[tranches.length - 1].field_256, s - (tranches[tranches.length - 1].field_768 * s / 100000), 10^18
        else:
            if s - (tranches[tranches.length - 1].field_768 * s / 100000) <= tranches[tranches.length - 1].field_256:
                if not tranches[tranches.length - 1].field_256 - s + (tranches[tranches.length - 1].field_768 * s / 100000):
                    if tranches[tranches.length - 1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[tranches.length - 1].field_256
                    if 0 / tranches[tranches.length - 1].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_ae4f9c74[stor4][stor7.length - 1].field_0 = tranches[tranches.length - 1].field_0
                    sub_ae4f9c74[stor4][stor7.length - 1].field_256 = tranches[tranches.length - 1].field_256
                    sub_ae4f9c74[stor4][stor7.length - 1].field_512 = s - (tranches[tranches.length - 1].field_768 * s / 100000)
                    sub_ae4f9c74[stor4][stor7.length - 1].field_768 = -(0 / tranches[tranches.length - 1].field_256) + 10^18
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1024 = tranches[tranches.length - 1].field_512
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1280 = tranches[tranches.length - 1].field_768
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1792 = block.timestamp
                    tranches[tranches.length - 1].field_256 = 0
                    emit 0x465c3a69: tranches.length - 1, cycle, tranches[tranches.length - 1].field_256, s - (tranches[tranches.length - 1].field_768 * s / 100000), -(0 / tranches[tranches.length - 1].field_256) + 10^18
                else:
                    if (10^18 * tranches[tranches.length - 1].field_256) - (10^18 * s) + (10^18 * tranches[tranches.length - 1].field_768 * s / 100000) / tranches[tranches.length - 1].field_256 - s + (tranches[tranches.length - 1].field_768 * s / 100000) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if tranches[tranches.length - 1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[tranches.length - 1].field_256
                    if (10^18 * tranches[tranches.length - 1].field_256) - (10^18 * s) + (10^18 * tranches[tranches.length - 1].field_768 * s / 100000) / tranches[tranches.length - 1].field_256 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_ae4f9c74[stor4][stor7.length - 1].field_0 = tranches[tranches.length - 1].field_0
                    sub_ae4f9c74[stor4][stor7.length - 1].field_256 = tranches[tranches.length - 1].field_256
                    sub_ae4f9c74[stor4][stor7.length - 1].field_512 = s - (tranches[tranches.length - 1].field_768 * s / 100000)
                    sub_ae4f9c74[stor4][stor7.length - 1].field_768 = -((10^18 * tranches[tranches.length - 1].field_256) - (10^18 * s) + (10^18 * tranches[tranches.length - 1].field_768 * s / 100000) / tranches[tranches.length - 1].field_256) + 10^18
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1024 = tranches[tranches.length - 1].field_512
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1280 = tranches[tranches.length - 1].field_768
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1792 = block.timestamp
                    tranches[tranches.length - 1].field_256 = 0
                    emit 0x465c3a69: tranches.length - 1, cycle, tranches[tranches.length - 1].field_256, s - (tranches[tranches.length - 1].field_768 * s / 100000), -((10^18 * tranches[tranches.length - 1].field_256) - (10^18 * s) + (10^18 * tranches[tranches.length - 1].field_768 * s / 100000) / tranches[tranches.length - 1].field_256) + 10^18
            else:
                if not s - (tranches[tranches.length - 1].field_768 * s / 100000) - tranches[tranches.length - 1].field_256:
                    if tranches[tranches.length - 1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[tranches.length - 1].field_256
                    if (0 / tranches[tranches.length - 1].field_256) + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ae4f9c74[stor4][stor7.length - 1].field_0 = tranches[tranches.length - 1].field_0
                    sub_ae4f9c74[stor4][stor7.length - 1].field_256 = tranches[tranches.length - 1].field_256
                    sub_ae4f9c74[stor4][stor7.length - 1].field_512 = s - (tranches[tranches.length - 1].field_768 * s / 100000)
                    sub_ae4f9c74[stor4][stor7.length - 1].field_768 = (0 / tranches[tranches.length - 1].field_256) + 10^18
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1024 = tranches[tranches.length - 1].field_512
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1280 = tranches[tranches.length - 1].field_768
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1792 = block.timestamp
                    tranches[tranches.length - 1].field_256 = 0
                    emit 0x465c3a69: tranches.length - 1, cycle, tranches[tranches.length - 1].field_256, s - (tranches[tranches.length - 1].field_768 * s / 100000), (0 / tranches[tranches.length - 1].field_256) + 10^18
                else:
                    if (10^18 * s) - (10^18 * tranches[tranches.length - 1].field_768 * s / 100000) - (10^18 * tranches[tranches.length - 1].field_256) / s - (tranches[tranches.length - 1].field_768 * s / 100000) - tranches[tranches.length - 1].field_256 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if tranches[tranches.length - 1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require tranches[tranches.length - 1].field_256
                    if ((10^18 * s) - (10^18 * tranches[tranches.length - 1].field_768 * s / 100000) - (10^18 * tranches[tranches.length - 1].field_256) / tranches[tranches.length - 1].field_256) + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ae4f9c74[stor4][stor7.length - 1].field_0 = tranches[tranches.length - 1].field_0
                    sub_ae4f9c74[stor4][stor7.length - 1].field_256 = tranches[tranches.length - 1].field_256
                    sub_ae4f9c74[stor4][stor7.length - 1].field_512 = s - (tranches[tranches.length - 1].field_768 * s / 100000)
                    sub_ae4f9c74[stor4][stor7.length - 1].field_768 = ((10^18 * s) - (10^18 * tranches[tranches.length - 1].field_768 * s / 100000) - (10^18 * tranches[tranches.length - 1].field_256) / tranches[tranches.length - 1].field_256) + 10^18
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1024 = tranches[tranches.length - 1].field_512
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1280 = tranches[tranches.length - 1].field_768
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1536 = sub_27e79c44
                    sub_ae4f9c74[stor4][stor7.length - 1].field_1792 = block.timestamp
                    tranches[tranches.length - 1].field_256 = 0
                    emit 0x465c3a69: tranches.length - 1, cycle, tranches[tranches.length - 1].field_256, s - (tranches[tranches.length - 1].field_768 * s / 100000), ((10^18 * s) - (10^18 * tranches[tranches.length - 1].field_768 * s / 100000) - (10^18 * tranches[tranches.length - 1].field_256) / tranches[tranches.length - 1].field_256) + 10^18
    stor6 = 0
    cycle++
    require ext_code.size(stakerAddress)
    call stakerAddress.0xedd004e5 with:
         gas gas_remaining wei
        args (cycle + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}



}
