contract main {




// =====================  Runtime code  =====================


#
#  - sub_0ad2584d(?)
#
address owner;
address adminAddress;
address sub_13bb3c33Address;
uint256 airdropAmount;
uint256 sub_2948ff41;
uint256 sub_8c4f728a;
mapping of uint256 sub_e57c6921;
mapping of uint256 endAirdrop;
mapping of uint256 startAirdrop;
mapping of uint8 stor9;

function sub_13bb3c33(?) payable {
    return sub_13bb3c33Address
}

function sub_1e14bb90(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor9[arg1][arg2])
}

function sub_2948ff41(?) payable {
    return sub_2948ff41
}

function sub_8c4f728a(?) payable {
    return sub_8c4f728a
}

function owner() payable {
    return owner
}

function startAirdrop(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return startAirdrop[arg1]
}

function sub_e57c6921(?) payable {
    require calldata.size - 4 >= 32
    return sub_e57c6921[arg1]
}

function admin() payable {
    return adminAddress
}

function airdropAmount() payable {
    return airdropAmount
}

function endAirdrop(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return endAirdrop[arg1]
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

function sub_d16a6b1a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endAirdrop[stor5] = arg1
}

function updateAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    airdropAmount = arg1
}

function updateAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function sub_61fac9b1(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8c4f728a = arg1
    startAirdrop[arg1] = arg2
    if arg2 > !sub_2948ff41:
        revert with 0, 17
    endAirdrop[arg1] = arg2 + sub_2948ff41
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

function claimTokens(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if block.timestamp <= startAirdrop[stor5]:
        revert with 0, 'Airdrop havent start'
    if block.timestamp >= endAirdrop[stor5]:
        revert with 0, 'Airdrop window over'
    mem[304 len arg1.length] = arg1[all]
    mem[arg1.length + 304] = 0
    require 65 == arg1.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, airdropAmount)), 0, mem[304], mem[336]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != adminAddress:
        revert with 0, 'wrong signature'
    if stor9[msg.sender][stor5]:
        revert with 0, 'airdrop already processed'
    stor9[msg.sender][stor5] = 1
    if sub_e57c6921[stor5] > !airdropAmount:
        revert with 0, 17
    sub_e57c6921[stor5] += airdropAmount
    require ext_code.size(sub_13bb3c33Address)
    staticcall sub_13bb3c33Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_13bb3c33Address)
    if airdropAmount <= ext_call.return_data[0]:
        call sub_13bb3c33Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, airdropAmount
    else:
        call sub_13bb3c33Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit AirdropProcessed(msg.sender, airdropAmount, block.timestamp);
}



}
