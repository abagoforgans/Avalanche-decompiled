contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#  - deposit(uint256 arg1)
#
const sub_13137745(?) = 0x694738e0a438d90487b4a549b201142c1a97b556

const vaultAddress = 0

const sub_4e2e2aa9(?) = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9

const sub_efe83dbd(?) = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const sub_f288a2e2(?) = 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05


uint256 stor0;
uint8 stor1; offset 160
address owner;
address coreAddress;
uint256 lastEarnBlock;
address uniRouterAddress;
address sub_e7f67fb1Address;
address sub_bb845c4aAddress;
address wantAddress;
address sub_c08eb3ebAddress;
uint256 poolId;
uint256 maxPrice;
array of address sub_38946a8c;
address oracleAddress;
uint256 sub_1aedeabe;

function lastEarnBlock() payable {
    return lastEarnBlock
}

function sub_1aedeabe(?) payable {
    return sub_1aedeabe
}

function sub_38946a8c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_38946a8c.length
    return sub_38946a8c[arg1]
}

function poolId() payable {
    return poolId
}

function paused() payable {
    return bool(stor1)
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function oracle() payable {
    return oracleAddress
}

function owner() payable {
    return owner
}

function sub_bb845c4a(?) payable {
    return sub_bb845c4aAddress
}

function sub_c08eb3eb(?) payable {
    return sub_c08eb3ebAddress
}

function maxPrice() payable {
    return maxPrice
}

function wantAddress() payable {
    return wantAddress
}

function sub_e7f67fb1(?) payable {
    return sub_e7f67fb1Address
}

function core() payable {
    return coreAddress
}

function _fallback() payable {
    revert
}

function updateStrategy() payable {
  stop
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function wantLockedInHere() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2cd0090d(?) payable {
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
    maxPrice = arg1
}

function stakeTime() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor1:
        revert with 0, 'Pausable: paused'
    require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
    call 0x694738e0a438d90487b4a549b201142c1a97b556.redeem(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(this.address), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0 = 1
}

function setDexRouter(address arg1) payable {
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
    sub_e7f67fb1Address = arg1
}

function earn() payable {
    if stor1:
        revert with 0, 'Pausable: paused'
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
    if stor1:
        revert with 0, 'Pausable: paused'
    stor1 = 1
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
    if not stor1:
        revert with 0, 'Pausable: not paused'
    stor1 = 0
    emit Unpaused(msg.sender);
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    mem[100] = 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05
    mem[132] = msg.sender
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05, msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyTimelock: Caller is not a timelock'
    if sub_bb845c4aAddress == arg1:
        revert with 0, '!safe'
    if wantAddress == arg1:
        revert with 0, '!safe'
    mem[ceil32(return_data.size) + 132] = arg3
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 32, msg.sender) >> 32 == bool(0, Mask(224, 32, msg.sender) >> 32)
            if not 0, Mask(224, 32, msg.sender) >> 32:
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



}
