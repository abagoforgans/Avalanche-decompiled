contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#  - deposit(uint256 arg1)
#  - sub_bc8c750d(?)
#  - withdrawRemaining()
#
const sub_547bdec5(?) = (8760 * 24 * 3600)

const sub_7ef46d29(?) = (168 * 24 * 3600)

const sub_c810b7fe(?) = (336 * 24 * 3600)


address owner;
address stor1;
mapping of struct beneficiaries;
mapping of struct sub_e6587a86;
uint256 numberOfBeneficiaries;
uint256 sub_bfe4cb40;
uint256 totalDepositedTokens;
uint256 period;
uint256 distributionStartTimestamp;
uint8 stor9;

function beneficiaries(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return beneficiaries[arg1].field_0, 
           beneficiaries[arg1].field_256,
           beneficiaries[arg1].field_512,
           beneficiaries[arg1].field_768,
           beneficiaries[arg1].field_1024,
           beneficiaries[arg1].field_1280,
           bool(beneficiaries[arg1].field_1536)
}

function numberOfBeneficiaries() payable {
    return numberOfBeneficiaries
}

function isInitialized() payable {
    return bool(stor9)
}

function owner() payable {
    return owner
}

function distributionStartTimestamp() payable {
    return distributionStartTimestamp
}

function sub_bfe4cb40(?) payable {
    return sub_bfe4cb40
}

function sub_e6587a86(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return bool(sub_e6587a86[arg1].field_0), 
           sub_e6587a86[arg1].field_256,
           sub_e6587a86[arg1].field_512,
           sub_e6587a86[arg1].field_768
}

function period() payable {
    return period
}

function totalDepositedTokens() payable {
    return totalDepositedTokens
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

function sub_c34114c3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot change a group after initialization'
    if arg2 >= 8760 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be lesser than maximum cliff'
    if arg4 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Number of installments must be higher than 0'
    sub_e6587a86[arg1 << 248].field_0 = 1
    sub_e6587a86[arg1 << 248].field_256 = arg2
    sub_e6587a86[arg1 << 248].field_512 = arg3
    sub_e6587a86[arg1 << 248].field_768 = arg4
    emit 0xec4e24eb: arg2, arg3, arg4, msg.sender
}

function initialize(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor9:
        revert with 0, 'Already initialized'
    if arg2 <= block.timestamp:
        revert with 0, 'Cannot start early'
    if block.timestamp > -604801:
        revert with 0, 17
    if arg2 >= block.timestamp + (168 * 24 * 3600):
        revert with 0, 'Cannot start late'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Installment period must be greater than 0'
    if arg3 >= 336 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Installment period must be lesser than the max'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The token address must be a deployed contract'
    stor9 = 1
    stor1 = arg1
    distributionStartTimestamp = arg2
    period = arg3
    emit Initialized(msg.sender, arg2, arg3);
}

function sub_716f09d3(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == uint8(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot add participants after initialization'
    mem[32] = 3
    if not sub_e6587a86[cd[68] << 248].field_0:
        revert with 0, 'Group is not active'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Different array sizes'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'Invalid address'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[36] + 36)] <= 0:
            revert with 0, 'Stake must be more than 0'
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if beneficiaries[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
            revert with 0, 'Participant has already been added'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[36] + 36)] and sub_e6587a86[cd[68] << 248].field_512 > -1 / cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 17
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[36] + 36)] < cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6:
            revert with 0, 17
        if not sub_e6587a86[cd[68] << 248].field_768:
            revert with 0, 18
        if cd[((32 * idx) + cd[36] + 36)] - (cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6) / sub_e6587a86[cd[68] << 248].field_768 / 10^12 > -2:
            revert with 0, 17
        if (cd[((32 * idx) + cd[36] + 36)] - (cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6) / sub_e6587a86[cd[68] << 248].field_768 / 10^12) + 1 and 10^12 > -1 / (cd[((32 * idx) + cd[36] + 36)] - (cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6) / sub_e6587a86[cd[68] << 248].field_768 / 10^12) + 1:
            revert with 0, 17
        mem[0] = uint8(cd[68])
        if (10^12 * cd[((32 * idx) + cd[36] + 36)] - (cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6) / sub_e6587a86[cd[68] << 248].field_768 / 10^12) + 10^12 and sub_e6587a86[cd[68] << 248].field_768 > -1 / (10^12 * cd[((32 * idx) + cd[36] + 36)] - (cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6) / sub_e6587a86[cd[68] << 248].field_768 / 10^12) + 10^12:
            revert with 0, 17
        if (10^12 * sub_e6587a86[cd[68] << 248].field_768) + (10^12 * cd[((32 * idx) + cd[36] + 36)] - (cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6) / sub_e6587a86[cd[68] << 248].field_768 / 10^12 * sub_e6587a86[cd[68] << 248].field_768) > !(cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6):
            revert with 0, 17
        if sub_bfe4cb40 > !((10^12 * sub_e6587a86[cd[68] << 248].field_768) + (10^12 * cd[((32 * idx) + cd[36] + 36)] - (cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6) / sub_e6587a86[cd[68] << 248].field_768 / 10^12 * sub_e6587a86[cd[68] << 248].field_768) + (cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6)):
            revert with 0, 17
        sub_bfe4cb40 = sub_bfe4cb40 + (10^12 * sub_e6587a86[cd[68] << 248].field_768) + (10^12 * cd[((32 * idx) + cd[36] + 36)] - (cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6) / sub_e6587a86[cd[68] << 248].field_768 / 10^12 * sub_e6587a86[cd[68] << 248].field_768) + (cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6)
        _44 = mem[64]
        mem[64] = mem[64] + 224
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[_44] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = 3
        mem[_44 + 32] = sub_e6587a86[cd[68] << 248].field_256
        mem[_44 + 64] = sub_e6587a86[cd[68] << 248].field_768
        mem[_44 + 96] = 0
        mem[_44 + 128] = (10^12 * cd[((32 * idx) + cd[36] + 36)] - (cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6) / sub_e6587a86[cd[68] << 248].field_768 / 10^12) + 10^12
        mem[_44 + 160] = cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6
        mem[_44 + 192] = 0
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        beneficiaries[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = cd[((32 * idx) + cd[36] + 36)]
        beneficiaries[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = sub_e6587a86[cd[68] << 248].field_256
        beneficiaries[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = sub_e6587a86[cd[68] << 248].field_768
        beneficiaries[address(cd[((32 * idx) + cd[4] + 36)])].field_768 = 0
        beneficiaries[address(cd[((32 * idx) + cd[4] + 36)])].field_1024 = (10^12 * cd[((32 * idx) + cd[36] + 36)] - (cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6) / sub_e6587a86[cd[68] << 248].field_768 / 10^12) + 10^12
        beneficiaries[address(cd[((32 * idx) + cd[4] + 36)])].field_1280 = cd[((32 * idx) + cd[36] + 36)] * sub_e6587a86[cd[68] << 248].field_512 / 10^6
        beneficiaries[address(cd[((32 * idx) + cd[4] + 36)])].field_1536 = 0
        if numberOfBeneficiaries == -1:
            revert with 0, 17
        numberOfBeneficiaries++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _32 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = ('cd', 4).length
    idx = 0
    s = mem[64] + 128
    t = cd[4] + 36
    while idx < ('cd', 4).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_32 + 32] = (32 * ('cd', 4).length) + 128
    mem[_32 + (32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[_32 + (32 * ('cd', 4).length) + 160 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[_32 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = 0
    mem[_32 + 64] = msg.sender
    emit ParticipantsAdded(address[] arg1, uint256[] arg2, address arg3):
                           mem[mem[64] len _32 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + -mem[64] + 160],
}



}
