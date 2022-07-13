contract main {




// =====================  Runtime code  =====================


const sub_44c4aea9(?) = 'ERC20DividendReward', 0


uint8 stor0; offset 160
address owner;
address stakingContractAddress;
mapping of struct stor2;
uint256 stor3;
address rewardTokenAddress;

function paused() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
}

function stakingContract() payable {
    return stakingContractAddress
}

function rewardToken() payable {
    return rewardTokenAddress
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
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return (0x7e298ea200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
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

function rescueFunds() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7e298ea2(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if stakingContractAddress != msg.sender:
        revert with 0, 'Only staking'
    if arg2 and stor3 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * stor3 / 10^18 < stor2[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (arg2 * stor3 / 10^18) - stor2[address(arg1)].field_0:
        if stor2[address(arg1)].field_256 > !((arg2 * stor3 / 10^18) - stor2[address(arg1)].field_0):
            revert with 'NH{q', 17
        stor2[address(arg1)].field_256 = stor2[address(arg1)].field_256 + (arg2 * stor3 / 10^18) - stor2[address(arg1)].field_0
    if stor3 and arg3 > -1 / stor3:
        revert with 'NH{q', 17
    stor2[address(arg1)].field_0 = stor3 * arg3 / 10^18
}

function claimable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0xf4396e2a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor3 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * stor3 / 10^18 < stor2[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * stor3 / 10^18) - stor2[address(arg1)].field_0 > !stor2[address(arg1)].field_256:
        revert with 'NH{q', 17
    return ((ext_call.return_data[0] * stor3 / 10^18) - stor2[address(arg1)].field_0 + stor2[address(arg1)].field_256)
}

function claim() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0xf4396e2a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor3 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * stor3 / 10^18 < stor2[msg.sender].field_0:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * stor3 / 10^18) - stor2[msg.sender].field_0 > !stor2[msg.sender].field_256:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * stor3 / 10^18) - stor2[msg.sender].field_0 + stor2[msg.sender].field_256 <= 0:
        revert with 0, 'Nothing to claim'
    stor2[msg.sender].field_256 = 0
    if stor3 and ext_call.return_data[0] > -1 / stor3:
        revert with 'NH{q', 17
    stor2[msg.sender].field_0 = stor3 * ext_call.return_data[0] / 10^18
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (ext_call.return_data[0] * stor3 / 10^18) - stor2[msg.sender].field_0 + stor2[msg.sender].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Claimed(msg.sender, (ext_call.return_data[0] * stor3 / 10^18) - stor2[msg.sender].field_0 + stor2[msg.sender].field_256);
}

function sub_53e19355(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    if arg2 <= 0:
        revert with 0, 'Value sent should be > 0'
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0x96c82e57 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Total Weight should be > 0'
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if stor3 > !(10^18 * arg2 / ext_call.return_data[0]):
        revert with 'NH{q', 17
    stor3 += 10^18 * arg2 / ext_call.return_data[0]
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xe74217f8: Array(len=arg1.length, data=arg1[all]), arg2, ext_call.return_data[0]
}



}
