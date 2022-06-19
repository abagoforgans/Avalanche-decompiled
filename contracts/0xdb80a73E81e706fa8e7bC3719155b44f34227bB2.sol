contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address deadWalletAddress;
uint256 totalClaimed;
address stor11;
address stor12;
address stor13;
address stor14;
mapping of uint8 stor15;

function paused() payable {
    return bool(stor0)
}

function deadWallet() payable {
    return deadWalletAddress
}

function owner() payable {
    return owner
}

function totalClaimed() payable {
    return totalClaimed
}

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function pools() payable {
    return stor2, stor3, stor4
}

function fees() payable {
    return stor5, stor6, stor7, stor8
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function blacklistAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    stor15[address(arg1)] = uint8(arg2)
}

function setAuthorizedAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    stor1[address(arg1)] = uint8(arg2)
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

function sub_2e497c11(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor15[msg.sender]:
        revert with 0, 'RenameNode: Blacklisted'
    require ext_code.size(stor11)
    call stor11.0x7f93d80e with:
         gas gas_remaining wei
        args msg.sender, arg1, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_682ca7e6(?) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor15[msg.sender]:
        revert with 0, 'IncreaseNode: Blacklisted'
    require ext_code.size(stor14)
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'IncreaseNode: Insufficient balance'
    require ext_code.size(stor14)
    call stor14.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor12, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor11)
    call stor11.0xdde946e3 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7871db37(?) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor15[msg.sender]:
        revert with 0, 'MergeNodes: Blacklisted'
    require ext_code.size(stor14)
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor7:
        revert with 0, 'MergeNodes: Insufficient balance'
    if stor7:
        require ext_code.size(stor14)
        call stor14.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, deadWalletAddress, stor7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor11)
    call stor11.0x82af6714 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6e26989a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg3 == address(arg3)
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(stor11)
    staticcall stor11.0x64245940 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.sender:
        revert with 0, 'CreateNode: wrong sender'
    if stor15[address(msg.sender)]:
        revert with 0, 'CreateNode: Blacklisted'
    require ext_code.size(stor14)
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'CreateNode: Insufficient balance'
    if arg2 < ext_call.return_data[0]:
        revert with 0, 'CreateNode: Minimum price'
    require ext_code.size(stor12)
    call stor12.0xc33fb877 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor14)
    call stor14.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor12, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor11)
    call stor11.0x90219732 with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if address(arg3):
        require ext_code.size(stor11)
        staticcall stor11.0xda3934c7 with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'CreateNode: Invalid sponsor'
        require ext_code.size(stor13)
        call stor13.0xb996dce8 with:
             gas gas_remaining wei
            args msg.sender, address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function compoundAll() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if not msg.sender:
        revert with 0, 'CompoundAll: Sender'
    if stor15[address(msg.sender)]:
        revert with 0, 'CompoundAll: Blacklisted'
    require ext_code.size(stor11)
    staticcall stor11.getAllNodesRewards(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CompoundAll: No rewards'
    if not stor6:
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if not stor8:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if stor6 > !stor8:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0x4b81bd08 with:
                 gas gas_remaining wei
                args msg.sender, stor6 + stor8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, stor12, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Compound(ext_call.return_data[0], 0, msg.sender);
        else:
            if ext_call.return_data[0] and stor8 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, deadWalletAddress, ext_call.return_data[0] * stor8 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] < ext_call.return_data[0] * stor8 / 100:
                revert with 0, 17
            if stor6 > !stor8:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0x4b81bd08 with:
                 gas gas_remaining wei
                args msg.sender, stor6 + stor8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, stor12, ext_call.return_data[0] - (ext_call.return_data[0] * stor8 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Compound(ext_call.return_data[0] - (ext_call.return_data[0] * stor8 / 100), 0, msg.sender);
    else:
        if ext_call.return_data[0] and stor6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(stor14)
        call stor14.0x23b872dd with:
             gas gas_remaining wei
            args stor3, stor4, ext_call.return_data[0] * stor6 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] < ext_call.return_data[0] * stor6 / 100:
            revert with 0, 17
        if not stor8:
            if ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100) < 0:
                revert with 0, 17
            if stor6 > !stor8:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0x4b81bd08 with:
                 gas gas_remaining wei
                args msg.sender, stor6 + stor8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, stor12, ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Compound(ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100), 0, msg.sender);
        else:
            if ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100) and stor8 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100):
                revert with 0, 17
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, deadWalletAddress, (ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor6 / 100 * stor8) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100) < (ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor6 / 100 * stor8) / 100:
                revert with 0, 17
            if stor6 > !stor8:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0x4b81bd08 with:
                 gas gas_remaining wei
                args msg.sender, stor6 + stor8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, stor12, ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100) - ((ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor6 / 100 * stor8) / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Compound(ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100) - ((ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor6 / 100 * stor8) / 100), 0, msg.sender);
}

function sub_5c69cb5d(?) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if not msg.sender:
        revert with 0, 'CompoundNodeRewards: Sender'
    if stor15[address(msg.sender)]:
        revert with 0, 'CompoundNodeRewards: Blacklisted'
    require ext_code.size(stor11)
    staticcall stor11.0x329a2dd4 with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CompoundNodeRewards: No rewards'
    if not stor6:
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if not stor8:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if stor6 > !stor8:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0x46f2acf1 with:
                 gas gas_remaining wei
                args msg.sender, arg1, stor6 + stor8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, stor12, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Compound(ext_call.return_data[0], arg1, msg.sender);
        else:
            if ext_call.return_data[0] and stor8 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, deadWalletAddress, ext_call.return_data[0] * stor8 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] < ext_call.return_data[0] * stor8 / 100:
                revert with 0, 17
            if stor6 > !stor8:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0x46f2acf1 with:
                 gas gas_remaining wei
                args msg.sender, arg1, stor6 + stor8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, stor12, ext_call.return_data[0] - (ext_call.return_data[0] * stor8 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Compound(ext_call.return_data[0] - (ext_call.return_data[0] * stor8 / 100), arg1, msg.sender);
    else:
        if ext_call.return_data[0] and stor6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(stor14)
        call stor14.0x23b872dd with:
             gas gas_remaining wei
            args stor3, stor4, ext_call.return_data[0] * stor6 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] < ext_call.return_data[0] * stor6 / 100:
            revert with 0, 17
        if not stor8:
            if ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100) < 0:
                revert with 0, 17
            if stor6 > !stor8:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0x46f2acf1 with:
                 gas gas_remaining wei
                args msg.sender, arg1, stor6 + stor8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, stor12, ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Compound(ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100), arg1, msg.sender);
        else:
            if ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100) and stor8 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100):
                revert with 0, 17
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, deadWalletAddress, (ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor6 / 100 * stor8) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100) < (ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor6 / 100 * stor8) / 100:
                revert with 0, 17
            if stor6 > !stor8:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0x46f2acf1 with:
                 gas gas_remaining wei
                args msg.sender, arg1, stor6 + stor8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, stor12, ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100) - ((ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor6 / 100 * stor8) / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Compound(ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / 100) - ((ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor6 / 100 * stor8) / 100), arg1, msg.sender);
}

function cashoutAll() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if not msg.sender:
        revert with 0, 'CashoutAll: wrong sender'
    if stor15[address(msg.sender)]:
        revert with 0, 'CashoutAll: Blacklisted'
    require ext_code.size(stor11)
    staticcall stor11.getAllNodesRewards(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CashoutAll: No rewards'
    if not stor5:
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if not stor8:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0xc4aaf7cb with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if totalClaimed > !ext_call.return_data[0]:
                revert with 0, 17
            totalClaimed += ext_call.return_data[0]
            emit Cashout(ext_call.return_data[0], 0, msg.sender);
        else:
            if ext_call.return_data[0] and stor8 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, deadWalletAddress, ext_call.return_data[0] * stor8 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] < ext_call.return_data[0] * stor8 / 100:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0xc4aaf7cb with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor8 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor8 / 100)):
                revert with 0, 17
            totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor8 / 100)
            emit Cashout(ext_call.return_data[0] - (ext_call.return_data[0] * stor8 / 100), 0, msg.sender);
    else:
        if ext_call.return_data[0] and stor5 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(stor14)
        call stor14.0x23b872dd with:
             gas gas_remaining wei
            args stor3, stor4, ext_call.return_data[0] * stor5 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] < ext_call.return_data[0] * stor5 / 100:
            revert with 0, 17
        if not stor8:
            if ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) < 0:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0xc4aaf7cb with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100)):
                revert with 0, 17
            totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100)
            emit Cashout(ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100), 0, msg.sender);
        else:
            if ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) and stor8 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100):
                revert with 0, 17
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, deadWalletAddress, (ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor5 / 100 * stor8) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) < (ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor5 / 100 * stor8) / 100:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0xc4aaf7cb with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) - ((ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor5 / 100 * stor8) / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) - ((ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor5 / 100 * stor8) / 100)):
                revert with 0, 17
            totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) - ((ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor5 / 100 * stor8) / 100)
            emit Cashout(ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) - ((ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor5 / 100 * stor8) / 100), 0, msg.sender);
}

function cashoutReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if not msg.sender:
        revert with 0, 'CashoutReward: wrong sender'
    if stor15[address(msg.sender)]:
        revert with 0, 'CashoutReward: Blacklisted'
    require ext_code.size(stor11)
    staticcall stor11.0x329a2dd4 with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CashoutReward: No rewards'
    if not stor5:
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if not stor8:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0xe55679d5 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if totalClaimed > !ext_call.return_data[0]:
                revert with 0, 17
            totalClaimed += ext_call.return_data[0]
            emit Cashout(ext_call.return_data[0], arg1, msg.sender);
        else:
            if ext_call.return_data[0] and stor8 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, deadWalletAddress, ext_call.return_data[0] * stor8 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] < ext_call.return_data[0] * stor8 / 100:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0xe55679d5 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor8 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor8 / 100)):
                revert with 0, 17
            totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor8 / 100)
            emit Cashout(ext_call.return_data[0] - (ext_call.return_data[0] * stor8 / 100), arg1, msg.sender);
    else:
        if ext_call.return_data[0] and stor5 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(stor14)
        call stor14.0x23b872dd with:
             gas gas_remaining wei
            args stor3, stor4, ext_call.return_data[0] * stor5 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] < ext_call.return_data[0] * stor5 / 100:
            revert with 0, 17
        if not stor8:
            if ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) < 0:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0xe55679d5 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100)):
                revert with 0, 17
            totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100)
            emit Cashout(ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100), arg1, msg.sender);
        else:
            if ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) and stor8 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100):
                revert with 0, 17
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, deadWalletAddress, (ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor5 / 100 * stor8) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) < (ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor5 / 100 * stor8) / 100:
                revert with 0, 17
            require ext_code.size(stor11)
            call stor11.0xe55679d5 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor14)
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args stor3, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) - ((ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor5 / 100 * stor8) / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) - ((ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor5 / 100 * stor8) / 100)):
                revert with 0, 17
            totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) - ((ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor5 / 100 * stor8) / 100)
            emit Cashout(ext_call.return_data[0] - (ext_call.return_data[0] * stor5 / 100) - ((ext_call.return_data[0] * stor8) - (ext_call.return_data[0] * stor5 / 100 * stor8) / 100), arg1, msg.sender);
}



}
