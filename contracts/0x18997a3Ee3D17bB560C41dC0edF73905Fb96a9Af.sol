contract main {




// =====================  Runtime code  =====================


mapping of address idToOwner;
mapping of address idToToken;
mapping of uint256 idToAmount;
mapping of uint256 idToUnlockDate;
uint256 currentId;

function idToAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return idToAmount[arg1]
}

function idToTokenAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return idToToken[arg1]
}

function idToOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(idToOwner[arg1])
}

function currentId() payable {
    return currentId
}

function idToUnlockDate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return idToUnlockDate[arg1]
}

function _fallback() payable {
    revert
}

function unlockERC20Token(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < idToUnlockDate[arg1]:
        revert with 0, 'not yet unlockable'
    if not idToAmount[stor4]:
        revert with 0, 'already unlocked'
    idToAmount[stor4] = 0
    require ext_code.size(idToToken[arg1])
    call idToToken[arg1].0xa9059cbb with:
         gas gas_remaining wei
        args address(idToOwner[arg1]), idToAmount[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lockERC20Token(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg2 <= 0:
        revert with 0, 'amount must be greater than 0'
    uint256(idToOwner[stor4]) = msg.sender or Mask(96, 160, uint256(idToOwner[stor4]))
    idToToken[stor4] = arg1
    idToAmount[stor4] = arg2
    idToUnlockDate[stor4] = arg3
    emit TokenLocked(arg2, arg3, currentId, arg1, msg.sender);
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if currentId == -1:
        revert with 0, 17
    currentId++
}



}
