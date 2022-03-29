contract main {




// =====================  Runtime code  =====================


address adminAddress;
mapping of uint8 stor1;
address tokenAddress;
uint256 currentAirdropAmount;
uint256 maxAirdropAmount;
uint256 amount;

function maxAirdropAmount() payable {
    return maxAirdropAmount
}

function processedAirdrops(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function currentAirdropAmount() payable {
    return currentAirdropAmount
}

function amount() payable {
    return amount
}

function admin() payable {
    return adminAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function updateAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    adminAddress = arg1
}

function sub_6c806401(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[272 len arg2.length] = arg2[all]
    mem[arg2.length + 272] = 0
    require arg2.length == 65
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(address(arg1))), 0, mem[272], mem[304]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != adminAddress:
        revert with 0, 'wrong signature'
    if stor1[address(arg1)]:
        revert with 0, 'airdrop already processed'
    if currentAirdropAmount > -amount - 1:
        revert with 'NH{q', 17
    if currentAirdropAmount + amount > maxAirdropAmount:
        revert with 0, 'airdropped 100% of the tokens'
    stor1[address(arg1)] = 1
    if currentAirdropAmount > -amount - 1:
        revert with 'NH{q', 17
    currentAirdropAmount += amount
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), amount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit AirdropProcessed(address(arg1), amount, block.timestamp);
}



}
