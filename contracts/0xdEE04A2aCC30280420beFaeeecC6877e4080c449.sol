contract main {




// =====================  Runtime code  =====================


#
#  - reinvest()
#
address depositTokenAddress;
address rewardTokenAddress;
address vaultAddress;
address sub_39b70e38Address;
array of uint256 name;
uint256 PID;
uint256 REINVEST_REWARD_BIPS;
uint256 ADMIN_FEE_BIPS;
uint256 MIN_TOKENS_TO_REINVEST;
address feeCollectorAddress;
address stakingContractAddress;
address routerAddress;

function name() payable {
    return name[0 len name.length]
}

function ADMIN_FEE_BIPS() payable {
    return ADMIN_FEE_BIPS
}

function sub_39b70e38(?) payable {
    return sub_39b70e38Address
}

function PID() payable {
    return PID
}

function REINVEST_REWARD_BIPS() payable {
    return REINVEST_REWARD_BIPS
}

function MIN_TOKENS_TO_REINVEST() payable {
    return MIN_TOKENS_TO_REINVEST
}

function feeCollector() payable {
    return feeCollectorAddress
}

function depositToken() payable {
    return depositTokenAddress
}

function stakingContract() payable {
    return stakingContractAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function router() payable {
    return routerAddress
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function updateMinTokensToReinvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_39b70e38Address != msg.sender:
        revert with 0, 'onlyManager'
    emit UpdateMinTokensToReinvest(MIN_TOKENS_TO_REINVEST, arg1);
    MIN_TOKENS_TO_REINVEST = arg1
}

function sub_a378011f(?) payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args PID, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function updateAdminFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_39b70e38Address != msg.sender:
        revert with 0, 'onlyManager'
    if arg1 + REINVEST_REWARD_BIPS < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + REINVEST_REWARD_BIPS > 10000:
        revert with 0, 'admin fee too high'
    emit UpdateAdminFee(ADMIN_FEE_BIPS, arg1);
    ADMIN_FEE_BIPS = arg1
}

function sub_e0dac435(?) payable {
    if sub_39b70e38Address != msg.sender:
        if vaultAddress != msg.sender:
            revert with 0, 'onlyManagerOrVault'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args PID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateReinvestReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_39b70e38Address != msg.sender:
        revert with 0, 'onlyManager'
    if arg1 + ADMIN_FEE_BIPS < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + ADMIN_FEE_BIPS > 10000:
        revert with 0, 'reinvest reward too high'
    emit UpdateReinvestReward(REINVEST_REWARD_BIPS, arg1);
    REINVEST_REWARD_BIPS = arg1
}

function revokeAllowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if sub_39b70e38Address != msg.sender:
        revert with 0, 'onlyManager'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if vaultAddress != msg.sender:
        revert with 0, 'onlyVault'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7753747261746567793a3a7265636f76657245524332302c20616d6f756e7420746f6f206c6f,
                    mem[202 len 26]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function checkReward() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.pendingBamboo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args PID, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function recoverAVAX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if vaultAddress != msg.sender:
        revert with 0, 'onlyVault'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6453747261746567793a3a7265636f766572415641582c20616d6f756e7420746f6f206c6f,
                    mem[201 len 27]
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe53747261746567793a3a7265636f766572415641582c20616d6f756e7420746f6f20686967,
                    mem[202 len 26]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if vaultAddress != msg.sender:
        revert with 0, 'onlyVault'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6453747261746567793a3a5f77697468647261774465706f736974546f6b656e732c20616d6f756e7420746f6f206c6f,
                    mem[212 len 16]
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args PID, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7753747261746567793a3a77697468647261772c207472616e73666572206661696c65,
                    mem[199 len 29]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if vaultAddress != msg.sender:
        revert with 0, 'onlyVault'
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6853747261746567793a3a6465706f7369742c207472616e7366657246726f6d206661696c65,
                    mem[202 len 26]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x7753747261746567793a3a5f7374616b654465706f736974546f6b656e732c20616d6f756e7420746f6f206c6f,
                    mem[209 len 19]
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args PID, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function estimateReinvestReward() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.pendingBamboo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args PID, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if 2 * ext_call.return_data[0] < MIN_TOKENS_TO_REINVEST:
        return 0
    if not uint255(ext_call.return_data[0]):
        return 0
    require 2 * ext_call.return_data[0]
    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 2 * ext_call.return_data[0] != REINVEST_REWARD_BIPS:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
}

function setAllowances() payable {
    if sub_39b70e38Address != msg.sender:
        revert with 0, 'onlyManager'
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args vaultAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stakingContractAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
