contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address orbitAddress;
address sub_cc65fc64Address;
mapping of uint8 stor103;

function owner() payable {
    return owner
}

function sub_cc65fc64(?) payable {
    return sub_cc65fc64Address
}

function isPaid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor103[arg1])
}

function orbitAddress() payable {
    return orbitAddress
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

function sub_ce098c9b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'EuropaBase: Invalid address'
    orbitAddress = address(arg1)
}

function sub_abc0f19b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'EuropaBase: Invalid address'
    sub_cc65fc64Address = address(arg1)
}

function sub_21bd54e6(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require 99 < calldata.size
    require 260 <= calldata.size
    idx = 68
    s = 96
    while idx < 260:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    return sha3(address(cd[4]), cd[36], mem[96], mem[128], mem[160], mem[192], mem[224], mem[256])
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

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint16(stor0.field_0) = 257
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'EuropaBase: Invalid address'
    orbitAddress = arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, 'EuropaBase: Invalid address'
    sub_cc65fc64Address = arg2
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_122109dd(?) payable {
    require calldata.size - 4 >= 256
    require 67 < calldata.size
    require 228 <= calldata.size
    idx = 36
    s = 96
    while idx < 228:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    if ('cd', 228).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(('cd', 228).length)) + 289 < 288 or ceil32(ceil32(('cd', 228).length)) + 289 > test266151307():
        revert with 'NH{q', 65
    mem[288] = ('cd', 228).length
    require cd[228] + ('cd', 228).length + 36 <= calldata.size
    mem[320 len ('cd', 228).length] = call.data[cd[228] + 36 len ('cd', 228).length]
    if stor103[cd[4]]:
        revert with 0, 'EuropaNode: Already paid for this refID'
    mem[ceil32(ceil32(('cd', 228).length)) + 321] = address(msg.sender)
    mem[ceil32(ceil32(('cd', 228).length)) + 341] = cd[4]
    mem[ceil32(ceil32(('cd', 228).length)) + 373] = mem[96]
    mem[ceil32(ceil32(('cd', 228).length)) + 289] = 244
    if ('cd', 228).length != 65:
        revert with 0, 'invalid signature length'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, cd[4], mem[96], mem[128], mem[160], mem[192], mem[224], mem[256])), 0, mem[320], mem[352]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != sub_cc65fc64Address:
        revert with 0, 'EuropaNode: Invalid signature'
    if not mem[96]:
        revert with 0, 'EuropaNode: Invalid price'
    if mem[128]:
        staticcall orbitAddress.0xb79cb2a0 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call orbitAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), mem[128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if mem[160]:
        staticcall orbitAddress.0x2c035b74 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call orbitAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), mem[160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if mem[192]:
        staticcall orbitAddress.0x453dd97f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call orbitAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), mem[192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if mem[224]:
        staticcall orbitAddress.getTeamWallet() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call orbitAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), mem[224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if mem[256]:
        staticcall orbitAddress.0x39277415 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call orbitAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), mem[256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor103[cd[4]] = 1
    emit 0x4f8faa48: cd[4], mem[96]
    return 1
}



}
