contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
array of uint256 name;
array of uint256 sub_726756d8;

function name() {
    return name[0 len name.length]
}

function sub_726756d8(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_726756d8.length
    return sub_726756d8[arg1].field_0
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setName(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    name.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
}

function sub_3ebcb519(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_726756d8.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_726756d8.length > idx:
            sub_726756d8[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_726756d8[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_726756d8.length > idx:
            sub_726756d8[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function roll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        require 0 < sub_726756d8.length
        require msg.value >= uint256(sub_726756d8.field_0)
    else:
        if arg1 == 1:
            require 1 < sub_726756d8.length
            require msg.value >= uint256(sub_726756d8.field_256)
        else:
            if arg1 == 2:
                require 2 < sub_726756d8.length
                require msg.value >= uint256(sub_726756d8.field_512)
            else:
                if arg1 == 3:
                    require 3 < sub_726756d8.length
                    require msg.value >= uint256(sub_726756d8.field_768)
                else:
                    if arg1 != 4:
                        revert with 0, 'Tier not found'
                    require 4 < sub_726756d8.length
                    require msg.value >= uint256(sub_726756d8.field_1024)
    call this.address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
