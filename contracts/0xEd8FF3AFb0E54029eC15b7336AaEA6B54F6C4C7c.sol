contract main {




// =====================  Runtime code  =====================


#
#  - resetAllowances()
#  - unpause()
#  - deposit(address arg1, uint256 arg2)
#  - withdraw(address arg1, uint256 arg2)
#  - earn(address arg1)
#
const sub_015fc88f(?) = 10000

const sub_1401a634(?) = 10000

const sub_64f3dbcb(?) = 9900

const sub_f4a9cdf6(?) = 995

const FEE_MAX = 10000


address owner;
uint8 stor2;
uint256 sub_c4445a62;
uint256 sub_9788633e;
uint256 sub_395e8ed0;
address wantAddress;
address earnedAddress;
address uniRouterAddress;
address sub_9e1a8613Address;
address sub_a9f45f26Address;
address sub_6d082483Address;
address rewardAddress;
address withdrawFeeAddress;
address vaultChefAddress;
address operatorAddress;
uint256 lastEarnBlock;
uint256 sharesTotal;
address buyBackAddress;
uint256 controllerFee;
uint256 rewardRate;
uint256 buyBackRate;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address sub_fb6bb272;
array of address sub_f6656435;
array of address sub_522af8a7;
array of address sub_38946a8c;
address masterchefAddress;
uint256 pid;
address feeAddress;

function lastEarnBlock() payable {
    return lastEarnBlock
}

function operatorAddress() payable {
    return operatorAddress
}

function buyBackRate() payable {
    return buyBackRate
}

function vaultChefAddress() payable {
    return vaultChefAddress
}

function sub_38946a8c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_38946a8c.length
    return sub_38946a8c[arg1]
}

function sub_395e8ed0(?) payable {
    return sub_395e8ed0
}

function masterchefAddress() payable {
    return masterchefAddress
}

function feeAddress() payable {
    return feeAddress
}

function sharesTotal() payable {
    return sharesTotal
}

function sub_522af8a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_522af8a7.length
    return sub_522af8a7[arg1]
}

function paused() payable {
    return bool(stor2)
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function sub_6d082483(?) payable {
    return sub_6d082483Address
}

function buyBackAddress() payable {
    return buyBackAddress
}

function withdrawFeeAddress() payable {
    return withdrawFeeAddress
}

function rewardRate() payable {
    return rewardRate
}

function controllerFee() payable {
    return controllerFee
}

function rewardAddress() payable {
    return rewardAddress
}

function owner() payable {
    return owner
}

function sub_9788633e(?) payable {
    return sub_9788633e
}

function sub_9e1a8613(?) payable {
    return sub_9e1a8613Address
}

function sub_a9f45f26(?) payable {
    return sub_a9f45f26Address
}

function sub_c4445a62(?) payable {
    return sub_c4445a62
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function pid() payable {
    return pid
}

function sub_f6656435(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f6656435.length
    return sub_f6656435[arg1]
}

function sub_fb6bb272(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_fb6bb272.length
    return sub_fb6bb272[arg1]
}

function slippageFactor() payable {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    feeAddress = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    operatorAddress = arg1
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

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
    require ext_code.size(masterchefAddress)
    call masterchefAddress.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args pid
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function vaultSharesTotal() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function setAddresses(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, 'Invalid Withdraw address'
    if not arg1:
        revert with 0, 'Invalid reward address'
    if not arg3:
        revert with 0, 'Invalid buyback address'
    rewardAddress = arg1
    withdrawFeeAddress = arg2
    buyBackAddress = arg3
    emit SetAddress(address(arg1), address(arg2), arg3);
}

function wantLockedTotal() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0])
}

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 > 10000:
        revert with 0, 'Max fee of 100%'
    if arg4 < 9900:
        revert with 0, '_withdrawFeeFactor too low'
    if arg4 > 10000:
        revert with 0, '_withdrawFeeFactor too high'
    if arg5 > 995:
        revert with 0, '_slippageFactor too high'
    controllerFee = arg1
    rewardRate = arg2
    buyBackRate = arg3
    withdrawFeeFactor = arg4
    slippageFactor = arg5
    emit SetSettings(arg1, arg2, arg3, arg4, arg5);
}

function unpanic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.0x93f1a40b with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(masterchefAddress)
        call masterchefAddress.0xe2bbb158 with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.0x93f1a40b with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
}



}
