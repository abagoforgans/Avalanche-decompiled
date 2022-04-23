contract main {




// =====================  Runtime code  =====================


const sub_5cd42315(?) = 1000


address owner;
uint256 sub_bcae25a4;
address treasuryAddress;
address forwarderAddress;
address deployerAddress;
mapping of address protocolControlCount;
mapping of uint256 stor6;

function treasury() payable {
    return treasuryAddress
}

function owner() payable {
    return owner
}

function sub_bcae25a4(?) payable {
    return sub_bcae25a4
}

function getProtocolControlCount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(protocolControlCount[address(arg1)])
}

function deployer() payable {
    return deployerAddress
}

function getProtocolControl(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return address(protocolControlCount[address(arg1)][1][arg2])
}

function forwarder() payable {
    return forwarderAddress
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

function getFeeBps(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6[address(arg1)]:
        return stor6[address(arg1)]
    return sub_bcae25a4
}

function setDeployer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    deployerAddress = arg1
    emit DeployerUpdated(arg1);
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
    emit TreasuryUpdated(arg1);
}

function setDefaultFeeBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Registry: provider fee cannot be greater than 10%'
    sub_bcae25a4 = arg1
    emit DefaultFeeBpsUpdated(arg1);
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

function setProtocolControlFeeBps(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Registry: provider fee cannot be greater than 10%'
    stor6[address(arg1)] = arg2
    emit ProtocolControlFeeBpsUpdated(arg2, arg1);
}

function sub_d566464b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if uint256(protocolControlCount[address(msg.sender)]) > -2:
        revert with 0, 17
    uint256(protocolControlCount[address(msg.sender)])++
    require ext_code.size(deployerAddress)
    call deployerAddress with:
         gas gas_remaining wei
        args uint256(protocolControlCount[address(msg.sender)]), msg.sender, Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    address(protocolControlCount[address(msg.sender)][1][uint256(protocolControlCount[address(msg.sender)])]) = ext_call.return_data[12 len 20]
    emit NewProtocolControl(deployerAddress, msg.sender, uint256(protocolControlCount[address(msg.sender)]), address(ext_call.return_data[4 len 28]));
}



}
