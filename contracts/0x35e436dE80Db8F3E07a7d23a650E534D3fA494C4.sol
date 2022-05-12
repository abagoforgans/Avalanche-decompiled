contract main {




// =====================  Runtime code  =====================


#
#  - sub_fec8900f(?)
#
const name = 'Utiltybia - Treasury', 0


address owner;
uint256 totalShares;
address sub_e6973260Address;
address communityAddress;
array of address tokens;
uint256 totalFunds;
mapping of uint256 shares;
uint256 sub_c88a66b0;
uint256 sub_2ac5e6bb;
mapping of uint256 sub_9136972f;

function sub_2ac5e6bb(?) {
    return sub_2ac5e6bb
}

function totalShares() {
    return totalShares
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function owner() {
    return owner
}

function sub_9136972f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9136972f[arg1]
}

function totalFunds() {
    return totalFunds
}

function sub_c88a66b0(?) {
    return sub_c88a66b0
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1]
}

function community() {
    return communityAddress
}

function sub_e6973260(?) {
    return sub_e6973260Address
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Permission denied'
    if not arg1:
        revert with 0, 'Invalid owner'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getAllocation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_c88a66b0 < sub_9136972f[address(arg1)]:
        revert with 0, 17
    if sub_c88a66b0 - sub_9136972f[address(arg1)] and shares[address(arg1)] > -1 / sub_c88a66b0 - sub_9136972f[address(arg1)]:
        revert with 0, 17
    return ((sub_c88a66b0 * shares[address(arg1)]) - (sub_9136972f[address(arg1)] * shares[address(arg1)]))
}

function raise() payable {
    if totalShares <= 0:
        revert with 0, 'No shares'
    if totalFunds > !msg.value:
        revert with 0, 17
    totalFunds += msg.value
    if msg.value > !sub_2ac5e6bb:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if sub_c88a66b0 > !(msg.value + sub_2ac5e6bb / totalShares):
        revert with 0, 17
    sub_c88a66b0 += msg.value + sub_2ac5e6bb / totalShares
    if msg.value + sub_2ac5e6bb / totalShares and totalShares > -1 / msg.value + sub_2ac5e6bb / totalShares:
        revert with 0, 17
    if msg.value < msg.value + sub_2ac5e6bb / totalShares * totalShares:
        revert with 0, 17
    sub_2ac5e6bb = msg.value - (msg.value + sub_2ac5e6bb / totalShares * totalShares)
}

function withdraw() {
    if sub_c88a66b0 < sub_9136972f[address(msg.sender)]:
        revert with 0, 17
    if sub_c88a66b0 - sub_9136972f[address(msg.sender)] and shares[address(msg.sender)] > -1 / sub_c88a66b0 - sub_9136972f[address(msg.sender)]:
        revert with 0, 17
    if (sub_c88a66b0 * shares[address(msg.sender)]) - (sub_9136972f[address(msg.sender)] * shares[address(msg.sender)]) <= 0:
        revert with 0, 'Funds empty'
    sub_9136972f[msg.sender] = sub_c88a66b0
    call msg.sender with:
       value (sub_c88a66b0 * shares[address(msg.sender)]) - (sub_9136972f[address(msg.sender)] * shares[address(msg.sender)]) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fa5b3662(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Permission denied'
    if ('cd', 4).length >= 256:
        revert with 0, 'Invalid length'
    idx = 0
    while ('cd', 4).length > uint8(idx):
        if uint8(idx) >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * uint8(idx)) + cd[4] + 36)] == address(cd[((32 * uint8(idx)) + cd[4] + 36)])
        if not shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]:
            revert with 0, 'Invalid share'
        shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] = 0
        if totalShares < shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]:
            revert with 0, 17
        totalShares -= shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]
        mem[0] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
        mem[32] = 9
        if sub_c88a66b0 > sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]:
            if sub_c88a66b0 < sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]:
                revert with 0, 17
            if sub_c88a66b0 - sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] and shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] > -1 / sub_c88a66b0 - sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]:
                revert with 0, 17
            mem[0] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
            mem[32] = 9
            sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] = sub_c88a66b0
            if totalShares <= 0:
                revert with 0, 'No shares'
            if totalFunds > !((sub_c88a66b0 * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) - (sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])])):
                revert with 0, 17
            totalFunds = totalFunds + (sub_c88a66b0 * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) - (sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])])
            if (sub_c88a66b0 * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) - (sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) > !sub_2ac5e6bb:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_c88a66b0 > !((sub_c88a66b0 * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) - (sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) + sub_2ac5e6bb / totalShares):
                revert with 0, 17
            sub_c88a66b0 += (sub_c88a66b0 * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) - (sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) + sub_2ac5e6bb / totalShares
            if (sub_c88a66b0 * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) - (sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) + sub_2ac5e6bb / totalShares and totalShares > -1 / (sub_c88a66b0 * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) - (sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) + sub_2ac5e6bb / totalShares:
                revert with 0, 17
            if (sub_c88a66b0 * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) - (sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) < (sub_c88a66b0 * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) - (sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) + sub_2ac5e6bb / totalShares * totalShares:
                revert with 0, 17
            sub_2ac5e6bb = (sub_c88a66b0 * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) - (sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) - ((sub_c88a66b0 * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) - (sub_9136972f[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] * shares[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]) + sub_2ac5e6bb / totalShares * totalShares)
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
}



}
